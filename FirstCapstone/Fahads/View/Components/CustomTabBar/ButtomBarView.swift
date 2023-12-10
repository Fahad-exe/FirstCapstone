//
//  ButtomBarView.swift
//  FirstCapstone
//
//  Created by Fahad Matlagitu on 28/11/2023.
//

import SwiftUI

 struct ButtomBarView: View { 
     @State var selectedTab: Int = 0

var body: some View {
    VStack(spacing: 0) {
      Spacer()
        VStack {
            switch selectedTab {
            case 0:
                HomeView()
                   
            case 1:
                MapView()
            case 2:
               AddShippmentView()
            case 3:
                Vouchers()
            case 4:
                ProfileView()
            default:
                EmptyView()
            }
        }
        
      
        
        Tabbar(index: $selectedTab)
    }.background(Color.black.opacity(0.1)).ignoresSafeArea()
}
}

#Preview {
    ButtomBarView()
}
