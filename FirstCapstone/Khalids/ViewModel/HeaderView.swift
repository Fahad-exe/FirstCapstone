//
//  HeaderView.swift
//  Parcels
//
//  Created by خالد on 25/05/1445 AH.
//

import SwiftUI

struct HeaderView: View {
    @StateObject var vm = ViewModel()
    
    var body: some View {
        NavigationStack{
            HStack {
                NavigationLink(destination:ProfileView().navigationBarBackButtonHidden(true)){
                    Image(systemName: "person")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 45, height: 45)
                        .background(Color.white.opacity(0.2))
                        .clipShape(Circle())
                }
                
                Spacer()
                
                VStack {
                    Text("Your Location")
                        .font(.headline)
                        .foregroundColor(.white.opacity(0.5))
                    ForEach(vm.items, id: \.id) { item in
                        Text(item.address)
                            .foregroundStyle(.white)
                    }
                }
                
                Spacer()
                
                NavigationLink(destination:NotificationView().navigationBarBackButtonHidden(true)){
                    Image(systemName: "bell")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 45, height: 45)
                        .background(Color.white.opacity(0.2))
                        .clipShape(Circle())
                }
            }
        }
    }
}
