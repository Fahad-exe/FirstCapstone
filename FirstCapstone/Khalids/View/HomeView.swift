import SwiftUI

struct HomeView: View {
    @StateObject var vm = ViewModel()
    @State private var searchText = ""
    
    var filteredItems: [Items] {
        searchText.isEmpty ? vm.items : vm.items.filter { $0.name_en.localizedCaseInsensitiveContains(searchText) }
    }
    
    var body: some View {
        NavigationView {
            GeometryReader { proxy in
                ScrollView {
                    VStack(spacing: 20) {
                        HeaderView()
                        
                        Image("home-image")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 250, height: 250)

                        VStack {
                                    Text("Track your package!")
                                        .font(.title2)
                                        .foregroundColor(.white)
                                        .bold()
                                    Text("Please enter your tracking number")
                                        .font(.headline)
                                        .foregroundColor(.white.opacity(0.7))
                                    SearchBar(searchText: $searchText)
                                }
                            
                        
                        ForEach(filteredItems, id: \.id) { item in

                        }
                        
                        Spacer()
                        
                    }
                    .padding(.horizontal)
                    .padding(.top, proxy.safeAreaInsets.top)
                    .background(Color("first").ignoresSafeArea())
                    .cornerRadius(18)
                    
                    OffersSectionView()
                    TrackingHistoryView()
                   
                }
                
                .onAppear {
                    vm.fetchData()
                }
                .background(Color("background").ignoresSafeArea())
            }
        }
    }
}

#Preview {
    HomeView()
}
