//
//  ShipmentDetailView.swift
//  Parcels
//
//  Created by خالد on 25/05/1445 AH.
//

import SwiftUI

struct ShipmentDetailView: View {
    
    @State private var shipmentType: String = "Parcel"
    @State private var quantity: String = "1"
    @State private var selectedOption: String = "Regular"
    
    @StateObject var vm = ViewModel()
    
    @State var weight: String = "2.00KG"
    
    
    @State private var selectOption = 0
    let options = ["Regular", "Express"]

    var body: some View {
        Text(LocalizedStringKey("shipmentDetails"))
            .font(.headline)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
        
        VStack{
            HStack{
                
                VStack{
                    Text("\(shipmentType)")
                        .font(.title3)
                    
                    Text(LocalizedStringKey("shipmentType"))
                        .fontWeight(.medium)
                        .foregroundStyle(Color.gray)
                }
                
                Spacer()
                
                VStack{
                    Text("\(quantity)")
                        .font(.title3)
                    
                    Text(LocalizedStringKey("quantity"))
                        .fontWeight(.medium)
                        .foregroundStyle(Color.gray)
                }
                
                Spacer()
                
                VStack{
                    Text("\(weight)")
                        .font(.title3)
                    
                    Text(LocalizedStringKey("weight"))
                        .fontWeight(.medium)
                        .foregroundStyle(Color.gray)
                }
                
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
        .onAppear {
            vm.fetchData()
        }

      }
}

#Preview {
    ShipmentDetailView()
}
