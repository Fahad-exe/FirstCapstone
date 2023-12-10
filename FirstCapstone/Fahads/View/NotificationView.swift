//
//  NotificationView.swift
//  FirstCapstone
//
//  Created by Fahad Matlagitu on 07/12/2023.
//

import SwiftUI

struct NotificationView: View {
    @State var PaymentDue : Bool = false
    @State var PaymentComplete : Bool = false
    @State var ShippingUpdate : Bool = false
    @State var MarketingEmail : Bool = false
    var body: some View {
        VStack{
            HStack{
                NavigationLink(destination:ProfileView().navigationBarBackButtonHidden(true)){
                    Image(systemName: "chevron.backward")
                        .font(.headline)
                        .foregroundStyle(.black)
                        .padding([.vertical,.leading],24)
                        .frame(maxWidth: 24,alignment: .leading)
                }
                
                Text("Notification")
                    .font(.headline)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .center)
                    .padding([.trailing],32)
                
                
            }
            Text("Purchase and Payments")
                .font(.title3)
                .fontWeight(.semibold)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                .padding(.vertical)
            
            Text("Set notification preferences for your purchases. payment & deliveries")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
            
                
            Toggle("Payment Due", isOn: $PaymentDue)
                .fontWeight(.medium)
            Toggle("Payment Complete", isOn: $PaymentComplete)
                .fontWeight(.medium)
            Toggle("Shipping Updates", isOn: $ShippingUpdate)
                .fontWeight(.medium)
            
            Text("Marketing Emails")
                .font(.title3)
                .fontWeight(.semibold)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                .padding(.vertical)
            Text("To be contacted with marketing promotions. our merchant partners. Read more in our Privacy Notice")
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
            
            Toggle("Recieve Marketing Emails", isOn: $MarketingEmail)
                .fontWeight(.medium)
        }
        .padding()
    }
}

#Preview {
    NotificationView()
}
