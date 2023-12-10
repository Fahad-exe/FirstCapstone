import SwiftUI
import MapKit

struct LiveTracking: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 24.774265, longitude: 46.738586),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    @StateObject var vm = ViewModel()
    
    var body: some View {
    
        HStack{
            
            NavigationLink(destination:TrackingView().navigationBarBackButtonHidden(true)){
                Image(systemName: "chevron.backward")
                    .font(.title3)
                    .foregroundStyle(.black)
                    .padding([.vertical,.leading],24)
                    .frame(maxWidth: 24,alignment: .leading)
            }
            
            Text("liveTracking")
                .font(.headline)
                .frame(maxWidth: .infinity,alignment: .center)
                .padding([.trailing],32)
            
            
        }
        .foregroundStyle(Color("fourth"))
                
        ScrollView{
            
                ZStack{
                    Map(coordinateRegion: $region)
                        .frame(width: .infinity, height: 322)
                        .cornerRadius(25)
                        .padding(.horizontal)
                    
                    HStack {
                        Button(action: {
                            zoomOut()
                        }) {
                            Image(systemName: "minus")
                                .foregroundStyle(.black)
                                .padding(22)
                                .background(Circle()
                                    .foregroundStyle(.white)
                                )
                        }
                        
                        Button(action: {
                            zoomIn()
                        }) {
                            Image(systemName: "plus")
                                .foregroundStyle(.black)
                                .padding()
                                .background(Circle()
                                    .foregroundStyle(.white)
                                )
                        }
                    }
                    .padding(.top, 240)
                    .padding(.leading, 170)
                }
                
                Spacer()
                
                
                VStack{
                    Text(LocalizedStringKey("from"))
                        .font(.footnote)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    HStack{
                        Image(systemName: "shippingbox")
                            .foregroundColor(.white)
                            .frame(width: 45, height: 45)
                            .background(Color.gray.opacity(0.1))
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack{
                            ForEach(vm.items, id: \.id) { item in
                                VStack {
                                    Text(item.address)
                                        .foregroundColor(.white)
                                }
                                .frame(height: 50)
                                .padding(.horizontal)
                                
                            }
                        }
                    }
                    
                    Text(LocalizedStringKey("to"))
                        .font(.footnote)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack{
                        Image(systemName: "location.north.circle")
                            .foregroundColor(.white)
                            .frame(width: 45, height: 45)
                            .background(Color.gray.opacity(0.1))
                            .clipShape(Circle())
                        
                        Spacer()
                        HStack{
                            ForEach(vm.items, id: \.id) { item in
                                VStack {
                                    Text(item.address)
                                        .foregroundStyle(Color.white)
                                }
                            }
                        }
                        .frame(width: .infinity, height: 50)
                        .padding(.horizontal)
                        .cornerRadius(18)
                    }
                }
                .padding()
                .frame(width: .infinity)
                .background(Color("first"))
                .cornerRadius(18)
                .padding()
            }
            .background(Color("background"))
            .ignoresSafeArea()
        }
    
    private func zoomIn() {
        region.span = MKCoordinateSpan(
            latitudeDelta: region.span.latitudeDelta / 2,
            longitudeDelta: region.span.longitudeDelta / 2
        )
    }
    
    private func zoomOut() {
        region.span = MKCoordinateSpan(
            latitudeDelta: region.span.latitudeDelta * 2,
            longitudeDelta: region.span.longitudeDelta * 2
        )
    }
}


#Preview {
    LiveTracking()
}
