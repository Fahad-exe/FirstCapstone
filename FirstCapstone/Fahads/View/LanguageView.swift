//
//  LanguageView.swift
//  FirstCapstone
//
//  Created by Fahad Matlagitu on 07/12/2023.
//

import SwiftUI

struct LanguageView: View {
  
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    NavigationLink(destination:ProfileView().navigationBarBackButtonHidden(true)){
                        Image(systemName: "chevron.backward")
                            .font(.headline)
                            .foregroundStyle(.black)
                            .padding([.vertical,.leading],24)
                            .frame(maxWidth: 24,alignment: .leading)
                    }
                    
                    Text("Language")
                        .font(.headline)
                        .frame(maxWidth: .infinity,alignment: .center)
                        .padding([.trailing],32)
                    
                    
                }
                .padding(.vertical)
                
                Text("Language")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                    .padding()
                Button("Change Language") {
                    if let url = URL(string: UIApplication.openSettingsURLString) {
                        UIApplication.shared.open(url)
                    }
                }
                
                Divider()
                    .foregroundStyle(.mainColour)
                Text("Appearance")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                    .padding()
                HStack{
                    Toggle("DarkMode", isOn: $isDarkMode)
                }
                .padding()
                Spacer()
            }
        }
    }
}

#Preview {
    LanguageView()
}
