import SwiftUI

struct ParcelView: View {

    @StateObject var vm = ViewModel()

    var body: some View {

                HStack{
                    NavigationLink(destination:RatesView().navigationBarBackButtonHidden(true)){
                        Image(systemName: "chevron.backward")
                            .font(.headline)
                            .foregroundStyle(.black)
                            .padding([.vertical,.leading],24)
                            .frame(maxWidth: 24,alignment: .leading)
                    }
                    
                    Text(LocalizedStringKey("parcel"))
                        .font(.headline)
                        .frame(maxWidth: .infinity,alignment: .center)
                        .padding([.trailing],32)
                }
                .foregroundStyle(Color("fourth"))
        
        ScrollView{
            
            ShipmentDestinationView()
            
            Spacer(minLength: 16)
            
            ShipmentQuantityView()
            
            Spacer(minLength: 16)
            
            DeliveryOptionsView()
            
        }
        
                Button(action: {
                    
                }) {
                    Text(LocalizedStringKey("continue"))
                        .foregroundColor(Color.white)
                        .font(.title3)
                        .frame(width: 327, height: 46)
                        .background(Color("first"))
                        .cornerRadius(20)
                }
            
            .onAppear {
                vm.fetchData()
            }
            .background(Color("background"))
            .ignoresSafeArea()
        }
    }

#Preview {
    ParcelView()
}
