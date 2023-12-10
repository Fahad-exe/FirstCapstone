//
//  EditProfileVIew.swift
//  FirstCapstone
//
//  Created by Fahad Matlagitu on 07/12/2023.
//

import SwiftUI

struct EditProfileView: View {
    @State var FullName: String = ""
    @State var email: String = ""
    @State var phoneNumb: String = ""
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
                    
                    Text("Edit Profile")
                        .font(.headline)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .center)
                        .padding([.trailing],32)
                    
                    
                }
                Image(systemName: "person")
                    .resizable().aspectRatio(contentMode: .fit)
                    .frame(width:50,height: 50)
                    .background(Circle().fill(.gray.opacity(0.6)).frame(width: 80, height: 80))
                    .padding(.bottom)
                
                Text("Full Name")
                    .font(.headline)
                    .padding([.horizontal,.top])
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                TextField("FullName", text: $FullName)
                    .padding()
                    .frame(width: 327, height: 52)
                    .background(RoundedRectangle(cornerRadius: 16).fill(.black.opacity(0.1)).frame(width: 327, height: 52))
                
                Text("Email")
                    .font(.headline)
                    .padding(.horizontal)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                TextField("Email", text: $email)
                    .padding()
                    .frame(width: 327, height: 52)
                    .background(RoundedRectangle(cornerRadius: 16).fill(.black.opacity(0.1)).frame(width: 327, height: 52))
                
                Text("Phone Number")
                    .font(.headline)
                    .padding(.horizontal)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                TextField("PhoneNumber", text: $phoneNumb)
                    .padding()
                    .frame(width: 327, height: 52)
                    .background(RoundedRectangle(cornerRadius: 16).fill(.black.opacity(0.1)).frame(width: 327, height: 52))
                
                Spacer()
                
                Button(action: {
                    print("Save Changes")
                }) {
                    Text("Save Changes")
                        .frame(width:327,height:46)
                        .font(.body)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 16)
                            .fill(Color.mainColour))
                }
            }
        }
    }
}

#Preview {
    EditProfileView()
}
