//
//  WeightQuantityView.swift
//  Parcels
//
//  Created by خالد on 25/05/1445 AH.
//

import SwiftUI

struct WeightQuantityView: View {
    @Binding var weight: String
    @Binding var integerNumber: Int
    
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text(LocalizedStringKey("weight"))
                    .font(.footnote)
                    .foregroundStyle(Color.gray.opacity(0.8))
                HStack{
                    TextField(" ", text: $weight)
                        .frame(width: 50, height: 35, alignment: .leading)
                        .modifier(ClearButton(text: $weight))
                }
            }
            
            Spacer()
            
            VStack(alignment: .leading){
                Text(LocalizedStringKey("quantity"))
                    .font(.footnote)
                    .foregroundStyle(Color.gray.opacity(0.8))
                
                HStack{
                    Text(LocalizedStringKey("\(integerNumber) Package"))
                        .frame(width: 80, height: 35, alignment: .leading)

                    Button(action: {
                        integerNumber -= 1
                    }) {
                        Image(systemName: "minus")
                            .foregroundColor(.black)
                            .frame(width: 45, height: 35)
                            .background(Color.gray.opacity(0.1))
                            .clipShape(Circle())
                    }
                    Button(action: {
                        integerNumber += 1
                    }) {
                        Image(systemName: "plus")
                            .foregroundColor(.black)
                            .frame(width: 45, height: 35)
                            .background(Color("second"))
                            .clipShape(Circle())
                    }
                }
            }
        }
        .padding()
    }
}
