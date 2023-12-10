//
//  ShipmentTrackingView.swift
//  Parcels
//
//  Created by خالد on 25/05/1445 AH.
//

import SwiftUI

struct ShipmentTrackingView: View {
    
    @StateObject var vm = ViewModel()
    @State private var searchText = ""
    
    var filteredItems: [Items] {
        if searchText.isEmpty {
            return vm.items
        } else {
            return vm.items.filter { $0.name_en.localizedCaseInsensitiveContains(searchText) }
        }
    }

    var body: some View {
        SearchBar(searchText: $searchText)
        
        VStack{
            ForEach(filteredItems, id: \.address) { item in
                
                Button(action: {}) {
                    VStack{
                        HStack {
                            Image(systemName: "shippingbox.fill")
                                .foregroundColor(Color("second"))
                                .frame(width: 45, height: 45)
                                .background(Color.gray.opacity(0.1))
                                .clipShape(Circle())
                            
                            Text(item.name_en)
                                .font(.headline)
                                .foregroundStyle(Color("fourth"))
                            
                            Spacer()
                            
                            Image(systemName: "chevron.forward")
                                .foregroundStyle(Color.black)
                            
                        }
                        HStack{
                            Text(LocalizedStringKey("orderStatus"))
                                .foregroundStyle(Color.gray)
                                .fontWeight(.regular)
                            
                            Text(LocalizedStringKey("inDelivery"))
                                .frame(width: 95, height: 30)
                                .foregroundStyle(Color.white)
                                .background(Color.green)
                                .cornerRadius(20)
                        }
                    }
                }
                .frame(maxWidth: .infinity, minHeight: 55)
                .padding()
                .background(Color("third"))
                .cornerRadius(20)
                .padding(.horizontal)
            }
        }.padding(.horizontal)
        
        Spacer()
        
            .onAppear {
                vm.fetchData()
        }
    }
}
//#Preview {
//    ShipmentTrackingView()
//}
