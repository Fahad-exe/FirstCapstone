import SwiftUI

struct TrackingView: View {
    
    
    @StateObject var vm = ViewModel()
    @State private var searchText = ""
    
    var filteredItems: [Items] {
        if searchText.isEmpty {
            return vm.items
        } else {
            return vm.items.filter { $0.name_en.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        
        HStack{
            NavigationLink(destination:HomeView().navigationBarBackButtonHidden(true)){
                Image(systemName: "chevron.backward")
                    .font(.headline)
                    .foregroundStyle(.black)
                    .padding([.vertical,.leading],24)
                    .frame(maxWidth: 24, alignment: .leading)
            }
            
            Text("tracking")
                .font(.headline)
                .frame(maxWidth: .infinity,alignment: .center)
                .padding([.trailing],32)
        }
        .foregroundStyle(Color("fourth"))
        
        ScrollView{
            
            ShipmentTrackingView()
            
        }
        .onAppear {
            vm.fetchData()
        }
        
        .background(Color("background"))
        .ignoresSafeArea()
    }
}


#Preview {
    TrackingView()
}

