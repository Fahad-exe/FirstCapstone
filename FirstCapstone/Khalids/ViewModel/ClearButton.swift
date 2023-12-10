//
//  ClearButton.swift
//  Parcels
//
//  Created by خالد on 25/05/1445 AH.
//

import SwiftUI

struct ClearButton: ViewModifier {
    @Binding var text: String
    
    func body(content: Content) -> some View {
        HStack {
            content
            if !text.isEmpty {
                Button(action: { self.text = "" }) {
                    Image(systemName: "xmark")
                        .foregroundColor(.black)
                }
            }
        }
    }
}
