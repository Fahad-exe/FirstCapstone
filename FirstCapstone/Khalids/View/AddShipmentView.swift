import SwiftUI

struct AddShippmentView: View {

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
                    
                    Text(LocalizedStringKey("addShipment"))
                        .font(.headline)
                        .frame(maxWidth: .infinity,alignment: .center)
                        .padding([.trailing],32)
                    
                    
                }
                .foregroundStyle(Color.black)
        ScrollView{

                ShipmentBox()

                Spacer(minLength: 100)
            }
            Button(action: {
                
            }) {
                Text(LocalizedStringKey("next"))
                    .foregroundColor(Color.white)
                    .font(.title3)
                    .frame(width: 327, height: 46)
                    .background(Color("Vouchers"))
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
    AddShippmentView()
}
