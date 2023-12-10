import SwiftUI

struct CheckRatesView: View {
    
    @State var weight: String = "1 Kg"
    @State private var integerNumber: Int = 0
    @StateObject var vm = ViewModel()
    
    var body: some View {
        HStack{
            NavigationLink(destination:HomeView().navigationBarBackButtonHidden(true)){
                Image(systemName: "chevron.backward")
                    .font(.headline)
                    .foregroundStyle(.black)
                    .padding([.vertical,.leading],24)
                    .frame(maxWidth: 24, alignment: .leading)
            }
            
            Text("checkRates")
                .font(.headline)
                .frame(maxWidth: .infinity,alignment: .center)
                .padding([.trailing],32)
        }
        
        ScrollView {
            
        VStack(spacing: 20) {

                VStack(alignment: .leading, spacing: 10) {
                    Text(LocalizedStringKey("calculateShipment"))
                        .bold()
                    Text(LocalizedStringKey("notificationPreferences"))
                        .fontWeight(.thin)
                }
                
                ShipmentDetailsView(vm: vm)
                
                WeightQuantityView(weight: $weight, integerNumber: $integerNumber)
                    .padding()
                
                Spacer()
                
            }
            .background(Color("background"))
            .ignoresSafeArea()
        }
        .onAppear {
            vm.fetchData()
        }
        ActionButtonView()
    }
}

#Preview {
    CheckRatesView()
}
