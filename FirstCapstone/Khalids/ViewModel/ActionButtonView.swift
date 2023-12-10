//
//  ActionButtonView.swift
//  Parcels
//
//  Created by خالد on 25/05/1445 AH.
//

import SwiftUI

struct ActionButtonView: View {
    var body: some View {
        
        Button(action: {}) {
            Text(LocalizedStringKey("checkRatesButton"))
                .foregroundStyle(Color.white)
                .font(.title3)
                .frame(width: 327, height: 46)
                .background(Color("Vouchers"))
                .cornerRadius(20)
        }
    }
}
