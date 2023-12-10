//
//  Tabbar.swift
//  FirstCapstone
//
//  Created by Fahad Matlagitu on 27/11/2023.
//

import SwiftUI

struct Tabbar: View { 
    @Binding var index: Int
    @Environment(\.colorScheme) var colorScheme
var body: some View {
    HStack {
        Button(action: {
            self.index = 0
        }) {
            VStack {
                Image(self.index == 0 ? (colorScheme == .dark ? "home-2-light" : "home-2-bold") : "home-2")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .font(.system(size: 24))
                Text(self.index == 0 ? "•" : "")
                    .frame(width: 20, height: 20)
                    .font(.system(size: 20))
                    .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
            }
        }.foregroundColor(Color.black.opacity(self.index == 0 ? 1 : 0.1))
        Spacer(minLength: 0)
        Button(action: {
            self.index = 1
        }) {
            VStack {
                Image(self.index == 1 ? (colorScheme == .dark ? "document-text-light" : "document-text-bold") : "document-text")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .font(.system(size: 24))
                Text(self.index == 1 ? "•" : "")
                    .frame(width: 20, height: 20)
                    .font(.system(size: 20))
                    .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
                    
            }
        }
        .padding(.trailing)
        .foregroundColor(Color.black.opacity(self.index == 1 ? 1 : 0.1))
        Spacer(minLength: 0)
        Button(action: {
            self.index = 2
        }) {
            VStack {
                Image(systemName: "plus")
                    .font(.title2)
                    .foregroundStyle(.black)
                    .padding(24)
                    .background(Circle().fill(.bottomBarColour))
                    .padding(.trailing)
                Text("")
                    .frame(width: 20, height: 20)
                    .font(.system(size: 40))
                    .foregroundStyle(.black)
            }
        }
        .padding(.vertical,8)
        
        Spacer(minLength: 0)
        
        Button(action: {
            self.index = 3
        }) {
            VStack {
                Image(self.index == 3 ? (colorScheme == .dark ? "ticket-discount-light" : "ticket-discount-bold") : "ticket-discount")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .font(.system(size: 24))
                Text(self.index == 3 ? "•" : "")
                    .frame(width: 20, height: 20)
                    .font(.system(size: 20))
                    .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
            }
        }.foregroundColor(Color.black.opacity(self.index == 3 ? 1 : 0.1))
        Spacer(minLength: 0)
        Button(action: {
            self.index = 4
        }) {
            VStack {
                Image(self.index == 4 ? (colorScheme == .dark ? "profile-pic-light" : "profile-pic-bold") : "profile-pic")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .font(.system(size: 24))
                Text(self.index == 4 ? "•" : "")
                    .frame(width: 20, height: 20)
                    .font(.system(size: 20))
                    .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
            }
        }.foregroundColor(Color.black.opacity(self.index == 4 ? 1 : 0.1))
    }
    .padding(.horizontal, 20)
    .background(Color.darkLight.cornerRadius(11))
}
}

