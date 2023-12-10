//
//  EditAddressView.swift
//  FirstCapstone
//
//  Created by Fahad Matlagitu on 07/12/2023.
//

import SwiftUI
import MapKit
struct EditAddressView: View {
    @State var isChecked: Bool = false
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 24.774265, longitude: 46.738586),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
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
                    
                    Text("Address")
                        .font(.headline)
                        .frame(maxWidth: .infinity,alignment: .center)
                        .padding([.trailing],32)
                    
                    
                }
                .padding(.vertical)
                
                VStack{
                    HStack{
                        HStack{
                            Image("Address")
                            Text("Office")
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 16).fill(.black.opacity(0.1)).frame(width: 92, height: 38))
                        Spacer()
                        
                        Button(action: {isChecked.toggle()}, label: {
                            Image(isChecked ? "CheckMark-true" : "CheckMark-false")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(.mainColour)
                        })
                        .padding()
                    }
                    Text("**Khalid**,32 East 98th Street, New York,NY10065, The United States of America")
                        .padding()
                    Text("+1 2345 678 4321")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                        .padding()
                    Button(action: {
                        print("Edit")
                    }) {
                        Text("Edit")
                            .frame(width:56,height:24)
                            .font(.body)
                            .foregroundColor(.black)
                            .background(RoundedRectangle(cornerRadius: 16)
                                .fill(.clear).stroke(Color.mainColour))
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .trailing)
                    .padding()
                }
                
                .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(.clear).stroke(isChecked ? Color.mainColour : Color.black.opacity(0.4), lineWidth:2))
                .padding()
                
                ZStack{
                    Map(coordinateRegion: $region)
                        .frame(width: 327, height: 322)
                        .cornerRadius(25)
                    
                    HStack {
                        Button(action: {
                            zoomOut()
                        }) {
                            Image(systemName: "minus")
                                .foregroundStyle(.black)
                                .padding(22)
                                .background(Circle()
                                    .foregroundStyle(.white)
                                )
                        }
                        
                        Button(action: {
                            zoomIn()
                        }) {
                            Image(systemName: "plus")
                                .foregroundStyle(.black)
                                .padding()
                                .background(Circle()
                                    .foregroundStyle(.white)
                                )
                        }
                    }
                    .padding(.top, 240)
                    .padding(.leading, 170)
                }
                NavigationLink(destination:AddAddressView().navigationBarBackButtonHidden(true)){
                    Text("Add new Address")
                        .frame(width:327,height:46)
                        .font(.body)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 16)
                            .fill(.mainColour))
                }
                .padding()
            }
            
            
            
        }
        
    }
    func zoomIn() {
        region.span = MKCoordinateSpan(
            latitudeDelta: region.span.latitudeDelta / 2,
            longitudeDelta: region.span.longitudeDelta / 2
        )
    }
    
    func zoomOut() {
        region.span = MKCoordinateSpan(
            latitudeDelta: region.span.latitudeDelta * 2,
            longitudeDelta: region.span.longitudeDelta * 2
        )
    }
}


#Preview {
    EditAddressView()
}


