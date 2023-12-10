//
//  AddAddressView.swift
//  FirstCapstone
//
//  Created by Fahad Matlagitu on 07/12/2023.
//

import SwiftUI
import MapKit

struct AddAddressView: View {
    @State var FullName: String = ""
   
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
                    
                    Text("Add New Address")
                        .font(.headline)
                        .frame(maxWidth: .infinity,alignment: .center)
                        .padding([.trailing],32)
                    
                    
                }
                .padding(.vertical)
                
                    Text("Full Name")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                    .padding()
                
                
                HStack{
                    TextField("Full Name", text: $FullName)
                        .padding()
                        .frame(width: 327, height: 52)
                        .background(RoundedRectangle(cornerRadius: 16).fill(.black.opacity(0.1)).frame(width: 327, height: 52))
                }
                .padding()
                
                
                Text("Street,Address and City")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                    .padding()
                TextField("Street, Address and City", text: $FullName)
                    .padding()
                    .frame(width: 327, height: 52)
                    .background(RoundedRectangle(cornerRadius: 16).fill(.black.opacity(0.1)).frame(width: 327, height: 52))
                    .padding()
                
               
                
                
               
                
                Button(action: {print("Added new address")}, label: {
                    Text("Add new Address")
                        .frame(width:327,height:46)
                        .font(.body)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 16)
                            .fill(.mainColour))
                })
            }
        }
        
    }
    
}

#Preview {
    AddAddressView()
}
