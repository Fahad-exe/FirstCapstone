//
//  TrackItemView.swift
//  Parcels
//
//  Created by خالد on 25/05/1445 AH.
//

import SwiftUI

struct TrackItemView: View {
    
    @StateObject var vm = ViewModel()

    var body: some View {
        Button(action: {}) {
            HStack {
                Image(systemName: "shippingbox.fill")
                    .foregroundColor(Color("second"))
                    .frame(width: 45, height: 45)
                    .background(Color.gray.opacity(0.1))
                    .clipShape(Circle())
                
                Spacer()
                
                VStack(alignment: .leading) {
                    ForEach(vm.items, id: \.id) { item in
                        VStack {
                            Text(item.address)
                                .foregroundStyle(Color.white)
                        }
                    }
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundStyle(.black)
            }
            .frame(width: 327, height: 55)
            .padding()
            .background(Color.white)
            .cornerRadius(20)
        }
    }
}
