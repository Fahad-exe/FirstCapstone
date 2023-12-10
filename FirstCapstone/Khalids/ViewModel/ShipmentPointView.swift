//
//  ShipmentPointView.swift
//  Parcels
//
//  Created by خالد on 25/05/1445 AH.
//

import SwiftUI

struct ShipmentPointView: View {
    let title: String
    let items: [Items]
    
    var body: some View {
        VStack {
            Text(LocalizedStringKey(title))
                .font(.footnote)
                .foregroundStyle(Color.gray.opacity(0.8))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack {
                Image(systemName: "shippingbox")
                    .foregroundStyle(Color("fourth"))
                    .frame(width: 45, height: 45)
                    .background(Color.gray.opacity(0.1))
                    .clipShape(Circle())
                
                ForEach(items, id: \.id) { item in
                    VStack {
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
    }
}
