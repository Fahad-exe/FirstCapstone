//
//  ShipmentDetailsView.swift
//  Parcels
//
//  Created by خالد on 25/05/1445 AH.
//

import SwiftUI

struct ShipmentDetailsView: View {
    @StateObject var vm: ViewModel
    
    var body: some View {
        VStack {
            ShipmentPointView(title: "pickUpPoint", items: vm.items)
            ShipmentPointView(title: "pickOffPoint", items: vm.items)
        }
        .frame(width: .infinity)
        .padding()
        .background(Color("third"))
        .cornerRadius(18)
    }
}
