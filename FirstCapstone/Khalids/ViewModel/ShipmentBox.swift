//
//  ShipmentBox.swift
//  Parcels
//
//  Created by خالد on 25/05/1445 AH.
//

import SwiftUI

struct ShipmentBox: View {
    
    @StateObject var vm = ViewModel()
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20){
            
            Text(LocalizedStringKey("shippingFrom"))
                .font(.headline)
                .foregroundStyle(Color.black)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack{
                ForEach(vm.items, id: \.id) { item in
                    VStack(alignment: .leading, spacing: 10) {
                        
                        Text(item.name_en)
                        
                        Text(item.contactInfo)
                        
                        Text(item.address)
                        
                            .foregroundStyle(Color.black)
                    }
                    .frame(height: 100, alignment: .leading)
                    .padding(.horizontal)
                    .cornerRadius(18)
                }
            }
            .frame(width: .infinity, alignment: .leading)
            .padding()
            .background(Color.white)
            .cornerRadius(20)
        }
        .padding()
        Spacer(minLength: 25)
        
        VStack(alignment: .leading, spacing: 10){
            
            Text(LocalizedStringKey("shippingTo"))
                .font(.headline)
                .foregroundStyle(Color.black)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack{
                ForEach(vm.items, id: \.id) { item in
                    VStack(alignment: .leading, spacing: 10) {
                        
                        Text(item.name_en)
                        
                        Text(item.contactInfo)
                        
                        Text(item.address)
                        
                            .foregroundStyle(Color.black)
                    }
                    .frame(height: 100)
                    .padding(.horizontal)
                    .cornerRadius(18)
                }
            }
            .frame(width: .infinity, alignment: .leading)
            .padding()
            .background(Color.white)
            .cornerRadius(20)
        }
        .padding()

        .onAppear {
            vm.fetchData()
        }
    }
}
//#Preview {
//    ShipmentBox()
//}
