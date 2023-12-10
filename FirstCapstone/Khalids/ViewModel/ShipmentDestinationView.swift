//
//  ShipmentDestinationView.swift
//  Parcels
//
//  Created by خالد on 25/05/1445 AH.
//

import SwiftUI

struct ShipmentDestinationView: View {

    @StateObject var vm = ViewModel()

    var body: some View {
        VStack(alignment: .leading){
            Text(LocalizedStringKey("from"))
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack{
                    Image(systemName: "shippingbox")
                        .foregroundColor(.black)
                        .frame(width: 45, height: 45)
                        .background(Color("second"))
                        .clipShape(Circle())
                    
                    Spacer()
                    
                    HStack{
                        ForEach(vm.items, id: \.id) { item in
                            VStack {
                                Text(item.address)
                                    .foregroundStyle(Color("fourth"))
                            }
                            .frame(height: 50, alignment: .leading)
                            .padding(.horizontal)

                        }
                    }
                }
                
                Text(LocalizedStringKey("to"))
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack{
                    Image(systemName: "location.north.circle")
                        .foregroundColor(.black)
                        .frame(width: 45, height: 45)
                        .background(Color("second"))
                        .clipShape(Circle())
                    
                    Spacer()
                    HStack{
                        ForEach(vm.items, id: \.id) { item in
                            VStack{
                                Text(item.address)
                                    .foregroundStyle(Color("fourth"))
                            }
                        }
                    }
                    .frame(width: .infinity, height: 50, alignment: .leading)
                    .padding(.horizontal)
                    .cornerRadius(18)
                }
            }
            .padding()
            .frame(width: .infinity, alignment: .leading)
            .background(Color("third"))
            .cornerRadius(18)
            .padding()
        
            .onAppear {
                vm.fetchData()
            }

    }
}

//#Preview {
//    ShipmentDestinationView()
//}
