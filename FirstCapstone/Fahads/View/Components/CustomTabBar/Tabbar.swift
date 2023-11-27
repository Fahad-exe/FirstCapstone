//
//  Tabbar.swift
//  FirstCapstone
//
//  Created by Fahad Matlagitu on 27/11/2023.
//

import SwiftUI

struct Tabbar: View { @Binding var index: Int

var body: some View {
    HStack {
        Button(action: {
            self.index = 0
        }) {
            VStack {
                Image("home-2")
                Text("Home")
                    .font(.system(size: 11))
                    .foregroundColor(.black)
            }
        }.foregroundColor(Color.black.opacity(self.index == 0 ? 1 : 0.1))
        Spacer(minLength: 0)
        Button(action: {
            self.index = 1
        }) {
            VStack {
                Image(self.index == 1 ? "favorites.fill" : "favorites")
                Text("Favourite")
                    .font(.system(size: 11))
                    .foregroundColor(.black)
            }
        }.foregroundColor(Color.black.opacity(self.index == 1 ? 1 : 0.1))
        Spacer(minLength: 0)
        Button(action: {
            self.index = 2
        }) {
            VStack {
                Image(systemName: "plus")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(24)
                    .background(Circle().fill(.blue))
                
                Text("Advertise")
                    .font(.system(size: 11))
                    .foregroundColor(.black)
            }
        }.offset(y: -20)
        
        Spacer(minLength: 0)
        
        Button(action: {
            self.index = 3
        }) {
            VStack {
                Image(self.index == 3 ? "chats.fill" : "chats")
                Text("Chats")
                    .font(.system(size: 11))
                    .foregroundColor(.black)
            }
        }.foregroundColor(Color.black.opacity(self.index == 3 ? 1 : 0.1))
        Spacer(minLength: 0)
        Button(action: {
            self.index = 4
        }) {
            VStack {
                Image(self.index == 4 ? "profile.fill" : "profile")
                Text("Profile")
                    .font(.system(size: 11))
                    .foregroundColor(.black)
            }
        }.foregroundColor(Color.black.opacity(self.index == 4 ? 1 : 0.1))
    }
    .padding(.horizontal, 20)
    .background(Color.white.cornerRadius(11))
}
}

