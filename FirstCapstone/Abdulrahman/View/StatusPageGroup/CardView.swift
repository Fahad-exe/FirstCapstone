// Abdulrahman Alshammari

import SwiftUI

struct CardView: View {
    @StateObject var vm2 = ParcelViewModel()
    @StateObject var vm = DeliverViewModel()

    var body: some View {
        NavigationStack {
            VStack(spacing: 30){
                HStack{
                    Image(systemName: "person")
                        .padding()
                        .background(Circle()
                            .fill(.gray.opacity(0.2))
                        )
                    VStack{
                        ForEach(vm.delivers, id: \ .id) { i in
                            Text(i.name_en)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Deliver")
                            .foregroundStyle(.gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    NavigationLink(destination: ChatView().navigationBarBackButtonHidden(true)) {
                        Image(systemName: "ellipsis.message")
                            .padding()
                            .background(Circle()
                                .stroke()
                            )
                            .foregroundStyle(.color)
                    }
                    Button {
                        
                    } label: {
                        Image(systemName: "phone")
                            .padding()
                            .foregroundStyle(.white)
                            .background(Circle()
                                .fill(.color)
                            )
                    }
                    
                }
                HStack(spacing: 60){
                    VStack{
                        Text("Status Order")
                            .foregroundStyle(.gray)
                        ForEach(vm2.parcels, id: \ .id) { i in
                            Text(i.status)
                        }
                        .foregroundStyle(.white)
                        .background(RoundedRectangle(cornerRadius: 25.0)
                            .frame(width: 100)
                            .foregroundStyle(.success)
                        )
                        .padding(10)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    VStack{
                        Text("Parcel Weight")
                            .foregroundStyle(.gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ForEach(vm2.parcels, id: \ .id) { i in
                            Text(i.weight)
                        }
                        .padding(10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                    }
                }
            }.padding()
                .background(RoundedRectangle(cornerRadius: 25.0)
                    .foregroundStyle(.white)
                    .shadow(radius: 0.1)
                )
        }
            .padding()
            .onAppear {
                vm2.fetch()
                vm.fetch()
            }
    }
}

#Preview {
    CardView()
}
