//
//  ShipmentPickPoints.swift
//  Parcels
//
//  Created by خالد on 25/05/1445 AH.
//

import SwiftUI

struct ShipmentPickPoints: View {
    
    @State private var shipmentType: String = "Parcel"
    @State private var quantity: String = "1"
    @State private var selectedOption: String = "Regular"
    
    @StateObject var vm = ViewModel()
    
    @State var weight: String = "2.00KG"
    
    @State private var selectOption = 0
    let options = ["Regular", "Express"]
    

    var body: some View {
        VStack{
            Text(LocalizedStringKey("pickUpPoint"))
                .font(.footnote)
                .foregroundStyle(Color.gray.opacity(0.8))
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack{
                Image(systemName: "shippingbox")
                    .foregroundStyle(Color("fourth"))
                    .frame(width: 45, height: 45)
                    .background(Color.gray.opacity(0.1))
                    .clipShape(Circle())
                
                Spacer()
                
                HStack{
                    ForEach(vm.items, id: \.id) { item in
                        VStack (alignment: .leading){
                            Text(item.address)
                                .foregroundStyle(Color("fourth"))
                        }
                        .frame(height: 50)
                        .padding(.horizontal)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(18)
                    }
                }
            }
            Spacer()
            
            Text(LocalizedStringKey("pickOffPoint"))
                .font(.footnote)
                .foregroundStyle(Color.gray.opacity(0.8))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack{
                Image(systemName: "location.north.circle")
                    .foregroundStyle(Color("fourth"))
                    .frame(width: 45, height: 45)
                    .background(Color.gray.opacity(0.1))
                    .clipShape(Circle())
                
                Spacer()
                
                HStack{
                    ForEach(vm.items, id: \.id) { item in
                        VStack {
                            Text(item.address)
                                .foregroundStyle(Color("fourth"))
                        }
                    }
                }
                .frame(width: .infinity, height: 50)
                .padding(.horizontal)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(18)
            }
        }
        .frame(width: .infinity)
        .padding()
        .background(Color("third"))
        .cornerRadius(18)
        
        .onAppear {
            vm.fetchData()
        }

    }
}

#Preview {
    ShipmentPickPoints()
}
