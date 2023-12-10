import SwiftUI
import PassKit

struct PaymentMethod: View {
    var body: some View {

            HStack{
                NavigationLink(destination:HomeView().navigationBarBackButtonHidden(true)){
                    Image(systemName: "chevron.backward")
                        .font(.headline)
                        .foregroundStyle(.black)
                        .padding([.vertical,.leading],24)
                        .frame(maxWidth: 24, alignment: .leading)
                }
                
                Text(LocalizedStringKey("payment"))
                    .font(.headline)
                    .frame(maxWidth: .infinity,alignment: .center)
                    .padding([.trailing],32)
            }
            .foregroundStyle(Color("fourth"))
            .padding(.horizontal)
            
        ScrollView{

            ShipmentDestinationView()
            
            DeliveryOptionsView()
            
            ApplePayButton()
                .frame(width: 200, height: 45)
                .padding()
        }

        .background(Color("background"))
        .ignoresSafeArea()
        }
    }

struct ApplePayButton: UIViewRepresentable {
    func makeUIView(context: Context) -> PKPaymentButton {
        let button = PKPaymentButton(paymentButtonType: .plain, paymentButtonStyle: .black)
        button.addTarget(context.coordinator, action: #selector(Coordinator.applePayButtonTapped), for: .touchUpInside)
        return button
    }

    func updateUIView(_ uiView: PKPaymentButton, context: Context) {
        // Update the view if needed
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }

    class Coordinator: NSObject {
        @objc func applePayButtonTapped() {
            initiateApplePay()
        }

        func initiateApplePay() {
            let paymentRequest = PKPaymentRequest()
            paymentRequest.merchantIdentifier = "merchant_id"
            paymentRequest.countryCode = "US"
            paymentRequest.currencyCode = "USD"
            paymentRequest.supportedNetworks = [.visa, .masterCard, .amex]
            paymentRequest.merchantCapabilities = .threeDSecure
            
            // Create payment summary item
            let item = PKPaymentSummaryItem(label: "ur_product", amount: NSDecimalNumber(decimal: 10.00))
            paymentRequest.paymentSummaryItems = [item]

            guard let paymentAuthorizationViewController = PKPaymentAuthorizationViewController(paymentRequest: paymentRequest) else {
                return
            }
            paymentAuthorizationViewController.delegate = self
            UIApplication.shared.windows.first?.rootViewController?.present(paymentAuthorizationViewController, animated: true, completion: nil)
        }
    }
}

extension ApplePayButton.Coordinator: PKPaymentAuthorizationViewControllerDelegate {
    func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didAuthorizePayment payment: PKPayment, handler completion: @escaping (PKPaymentAuthorizationResult) -> Void) {
        // Perform payment processing and handle authorization
        // Once payment processing is completed:
        let paymentAuthorizationResult = PKPaymentAuthorizationResult(status: .success, errors: nil)
        completion(paymentAuthorizationResult)
    }

    func paymentAuthorizationViewControllerDidFinish(_ controller: PKPaymentAuthorizationViewController) {
        controller.dismiss(animated: true, completion: nil)
    }
}


#Preview {
    PaymentMethod()
}
