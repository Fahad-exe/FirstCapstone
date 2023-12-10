//
//  LogoutView.swift
//  FirstCapstone
//
//  Created by Fahad Matlagitu on 07/12/2023.
//

import SwiftUI

struct LogoutView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                ProfileView().opacity(0.4)
                VStack{
                    Image("LogOut")
                    Text("Log Out!")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                    Text("Are you sure you want to Log out")
                    
                    HStack{
                        NavigationLink(destination:ProfileView().navigationBarBackButtonHidden(true)){
                            Text("Cancel")
                                .foregroundStyle(.black)
                                .font(.body)
                                .padding()
                        }
                        NavigationLink(destination:HomeView().navigationBarBackButtonHidden(true)){
                            Button(action: {
                                print("Log Out")
                            }) {
                                Text("Log Out")
                                    .font(.body)
                                    .foregroundColor(.white)
                                    .background(RoundedRectangle(cornerRadius: 16)
                                        .fill(.mainColour).frame(width: 103, height: 46))
                            }
                            .padding()
                        }
                    }
                    
                }
                .background(RoundedRectangle(cornerRadius: 25).fill(.white).frame(width: 295, height: 300).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,y:10))
            }
        }
    }
}

#Preview {
    LogoutView()
}
