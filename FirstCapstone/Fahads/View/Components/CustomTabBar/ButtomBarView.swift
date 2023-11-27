//
//  ButtomBarView.swift
//  FirstCapstone
//
//  Created by Fahad Matlagitu on 28/11/2023.
//

import SwiftUI

 struct ButtomBarView: View { @State private var selectedTab: Int = 0

var body: some View {
    VStack(spacing: 0) {
        Spacer()
        VStack {
            switch selectedTab {
            case 0:
                Text("Home")
            case 1:
                Text("Favourite")
            case 2:
                // Your code for the "Add" tab
                Text("AdvertiseView")
            case 3:
                Text("ChatsView()")
            case 4:
                Text("ProfileView()")
            default:
                EmptyView()
            }
        }
        
        Spacer()
        
        Tabbar(index: $selectedTab)
    }.background(Color.black.opacity(0.5)).ignoresSafeArea()
}
}

#Preview {
    ButtomBarView()
}
