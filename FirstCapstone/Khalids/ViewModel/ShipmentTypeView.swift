//
//  ShipmentTypeView.swift
//  Parcels
//
//  Created by خالد on 25/05/1445 AH.
//

import SwiftUI

struct ShipmentTypeView: View {
    
    @State private var shipmentType: String = "Parcel"
    @State private var quantity: String = "1"
    @State private var selectedOption: String = "Regular"
    
    @StateObject var vm = ViewModel()
    
    @State var weight: String = "2.00KG"
    
    
    @State private var selectOption = 0
    let options = ["Regular", "Express"]
    
    var body: some View {
        
        VStack {
            Text(LocalizedStringKey("shipmentDetails"))
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
            Picker(selection: $selectedOption, label: Text("")) {
                Text(LocalizedStringKey("regular")).tag("Regular")
                Text(LocalizedStringKey("express")).tag("Express")
            }
            .pickerStyle(SegmentedPickerStyle())
            .background(Color.gray.opacity(0.1))
            .cornerRadius(20)
            .padding(.horizontal)
            
            
            if selectedOption == "Regular"{
                
                VStack{
                    
                    HStack{
                        HStack{
                            Image(systemName: "truck.box")
                                .scaledToFit()
                            Text(LocalizedStringKey("days"))
                        }
                        .foregroundColor(Color("fourth"))
                        .frame(height: 36)
                        .padding(.horizontal)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(20)
                        
                        Spacer()
                        
                        HStack{
                            Text("$18")
                                .foregroundStyle(Color.black)
                        }
                        .frame(height: 36)
                        .padding(.horizontal)
                        .background(Color("second"))
                        .cornerRadius(20)
                    }
                    
                    Text("""
                         Luctus nam arcu est venenatis semper velit. Lectus enim ut tristique nunc.
                         * Neque massa nec scelerisque urna mauris.
                         * Quisque egestas tempus arcu at tortor amet egestas vivamus.
                         """)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(width: 327, height: 204)
                .padding()
                .background(Color("third"))
                .cornerRadius(20)
                
                
            }
        }
        .onAppear {
            vm.fetchData()
        }
    }
}
//#Preview {
//    ShipmentTypeView()
//}
