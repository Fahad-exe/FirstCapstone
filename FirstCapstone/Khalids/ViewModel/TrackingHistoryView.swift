//
//  TrackingHistoryView.swift
//  Parcels
//
//  Created by خالد on 25/05/1445 AH.
//

import SwiftUI

struct TrackingHistoryView: View {
    @StateObject var vm = ViewModel()

    var body: some View {
        VStack(spacing: 10) {
            
            HStack {
                Text("Tracking History")
                    .foregroundStyle(Color("fourth"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Button(action: {}) {
                    Text("See All")
                        .foregroundStyle(Color("fourth"))
                        .cornerRadius(18)
                }
            }
            .padding(.horizontal)
            Spacer()
            
            VStack{
                ForEach(vm.items, id: \.id) { item in
                    Button(action: {
                        
                    }) {
                        VStack {
                            HStack {
                                Image(systemName: "shippingbox.fill")
                                    .foregroundColor(Color("second"))
                                    .frame(width: 45, height: 45)
                                    .background(Color.gray.opacity(0.1))
                                    .clipShape(Circle())
                                
                                Spacer()
                                
                                VStack {
                                    Text(item.name_en)
                                        .font(.headline)
                                        .foregroundStyle(Color.black)
                                }
                                
                                Spacer()
                                
                                Image(systemName: "chevron.forward")
                                    .foregroundStyle(Color.black)
                            }
                        }
                        .frame(width: 327, height: 55)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(20)
                    }
                }
            }
        }
        .onAppear {
            vm.fetchData()
        }

    }
}
