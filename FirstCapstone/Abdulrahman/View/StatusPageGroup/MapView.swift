// Abdulrahman Alshammari

import SwiftUI
import MapKit

struct MapView: View {
    @StateObject var vm = UserViewModel()
    @StateObject var vm2 = ParcelViewModel()
    @StateObject var vm3 = DeliverViewModel()
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 24.774265, longitude: 46.738586),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    var body: some View {
        NavigationStack {
            ScrollView{
                VStack {
                    Text("Tracking")
                        .font(.headline)
                        .bold()
                        .padding(10)
                    ZStack{
                        Map(coordinateRegion: $region)
                            .frame(width: 327, height: 322)
                            .cornerRadius(25)
                        
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
                    .padding(8)
                    ZStack{
                        HStack(spacing: -10) {
                            Image("Image")
                                .resizable()
                                .frame(width: 44, height: 122)
                                .foregroundStyle(.white)
                            VStack(spacing: 20){
                                VStack{
                                    Text("From")
                                        .padding(.trailing, 200)
                                        .foregroundStyle(.color2)
                                    ForEach(vm.users, id: \ .id) { i in
                                        Text(i.address)
                                            .font(.callout)
                                    }
                                }
                                VStack{
                                    Text("To")
                                        .padding(.trailing, 220)
                                        .foregroundStyle(.color2)
                                    ForEach(vm3.delivers, id: \ .id) { i in
                                        Text(i.address)
                                            .font(.callout)
                                        
                                    }
                                }
                            }
                            .padding()
                            
                        }
                        .foregroundStyle(.white)
                        .background(RoundedRectangle(cornerRadius: 20.0)
                            .fill(.color)
                            .frame(width: 327)
                        )
                    }
                    
                    CardView()
                        .padding(.horizontal)
                    Spacer()
                }
            }
        }
        .onAppear {
            vm.fetch()
            vm2.fetch()
            vm3.fetch()
        }
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
    MapView()
}
