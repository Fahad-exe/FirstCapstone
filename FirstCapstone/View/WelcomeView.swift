//
//  ContentView.swift
//  FirstCapstone
//
//  Created by Fahad Matlagitu on 23/11/2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Color.color
                .ignoresSafeArea()
            VStack {
                Image("welcome logo")
                    .resizable()
                    .frame(width: 110, height: 110)
                    .padding()
                Text("QUAREER")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
            }
            .padding()
        }
    }
}

#Preview {
    WelcomeView()
}
