//
//  ProfileView.swift
//  FirstCapstone
//
//  Created by Fahad Matlagitu on 07/12/2023.
//

import SwiftUI

struct ProfileView: View {
    
    var ProfileList = [ProfileModel(destination: AnyView(EditProfileView()), Image: "Profile-person", Title: NSLocalizedString("Edit Profile", comment: "1")),ProfileModel(destination: AnyView(TrackingView()), Image: "Tracking", Title: NSLocalizedString("Tracking", comment: "2")),ProfileModel(destination: AnyView(EditAddressView()), Image: "Address", Title: NSLocalizedString("Address", comment: "3")),ProfileModel(destination: AnyView(NotificationView()), Image: "Notification", Title: NSLocalizedString("Notification", comment: "5")),ProfileModel(destination: AnyView(LanguageView()), Image: "Language", Title: NSLocalizedString("Language", comment: "6"))]
   
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    HStack{
                        Text("Profile")
                            .font(.headline)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .center)
                            .padding([.trailing],32)
                        
                        
                    }
                    Image(systemName: "person")
                        .resizable().aspectRatio(contentMode: .fit)
                        .frame(width:50,height: 50)
                        .background(Circle().fill(.gray.opacity(0.6)).frame(width: 80, height: 80))
                        .padding(.bottom)
                    Text("Khalid")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("Gold Member")
                        .font(.title3)
                        .foregroundStyle(.black.opacity(0.4))
                    HStack(spacing:48
                    ){
                        NavigationLink(destination: ParcelView().navigationBarBackButtonHidden(true)){
                            VStack {
                                Image("Parcels")
                                Text("All Package")
                                    .font(.body)
                                    .foregroundStyle(.black)
                                Text("Packages")
                                    .foregroundStyle(.black)
                                    .font(.subheadline)
                            }
                            .background(RoundedRectangle(cornerRadius: 16).fill(.white).frame(width: 156, height: 156).shadow(radius: 5,y:5))
                            .padding()
                        }
                        NavigationLink(destination:Vouchers().navigationBarBackButtonHidden(true)){
                            VStack {
                                Image("Vouchers")
                                Text("My Voucher")
                                    .font(.body)
                                    .foregroundStyle(.black)
                                Text("Vouchers")
                                    .font(.subheadline)
                                    .foregroundStyle(.black)
                            }
                            .background(RoundedRectangle(cornerRadius: 16).fill(.white)
                                .frame(width: 156, height: 156).shadow(radius: 5,y:5))
                            .padding()
                        }
                       
                    } // End of Two button
                    
                    Text("General")
                        .font(.body)
                        .foregroundStyle(.black.opacity(0.5))
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                        .padding()
                    
                    ForEach(ProfileList) { list in
                        NavigationLink(destination: list.destination .navigationBarBackButtonHidden(true)) {
                            
                            HStack{
                                Image(list.Image)
                                    .background(Circle().fill(.black.opacity(0.1)).frame(width: 48, height: 48))
                                    .padding()
                                Text(list.Title)
                                    .font(.headline)
                                    .foregroundStyle(.black)
                                    .padding()
                                Spacer()
                                Image(systemName: "chevron.forward")
                                    .foregroundStyle(.black)
                                    .padding()
                            }
                            
                        }
                        .padding(.horizontal)
                    } // End General
                    
                   
                    
                    Button(action: {
                        print("Logged Out")
                    }) {
                        Text("Log Out")
                            .frame(width:327,height:46)
                            .font(.body)
                            .foregroundColor(.black)
                            .background(RoundedRectangle(cornerRadius: 16)
                                .fill(.clear).stroke(Color.mainColour))
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
