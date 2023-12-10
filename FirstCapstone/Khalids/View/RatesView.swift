import SwiftUI

struct RatesView: View {
    
    @StateObject var vm = ViewModel()

    var body: some View {
        
        HStack{
            NavigationLink(destination:HomeView().navigationBarBackButtonHidden(true)){
                Image(systemName: "chevron.backward")
                    .font(.headline)
                    .foregroundStyle(.black)
                    .padding([.vertical,.leading],24)
                    .frame(maxWidth: 24,alignment: .leading)
            }
            
            Text("rates")
                .font(.headline)
                .frame(maxWidth: .infinity,alignment: .center)
                .padding([.trailing],32)
            
            
        }
        .foregroundStyle(Color("fourth"))
        
        ScrollView{
            
            ShipmentPickPoints()
            
            Spacer(minLength: 16)

            ShipmentDetailView()
            
            Spacer(minLength: 16)
            
            ShipmentTypeView()
            
        }
        .onAppear {
            vm.fetchData()
        }
        
        .background(Color("background"))
        .ignoresSafeArea()
    }
}


#Preview {
    RatesView()
}
