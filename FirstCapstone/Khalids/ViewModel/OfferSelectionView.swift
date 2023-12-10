//
//  OffersSelectionView.swift
//  Parcels
//
//  Created by خالد on 25/05/1445 AH.
//

import SwiftUI

struct OffersSectionView: View {
    var body: some View {
        
        VStack(spacing: 10) {
            
            HStack {
                Button(action: {}) {
                    NavigationLink(destination: CheckRatesView()) {
                        Image("location")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 64, height: 64)
                        Text("Check Rates")
                            .foregroundStyle(Color("fourth"))
                            .font(.callout)
                    }
                    .frame(width: 156, height: 156)
                    .background(Color("third"))
                    .cornerRadius(18)
                }
                Spacer(minLength: 10)
                Button(action: {}) {
                    VStack {
                        Image("truck")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 64, height: 64)
                        Text("Pick-UP")
                            .foregroundStyle(Color("fourth"))
                            .font(.callout)
                    }
                    .frame(width: 156, height: 156)
                    .background(Color("third"))
                    .cornerRadius(18)
                }
            }
            .padding(.horizontal)
                        
            Text("Special Offers")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            
            VStack(alignment: .leading){
                Text("Save up to 30%")
                .font(.title)
                .bold()
                .foregroundStyle(Color.black)
                .frame(maxWidth: .infinity, alignment: .leading)
            
                Text("Use code GET30 and save up to 45% cost.")
                .font(.title2)
                .foregroundStyle(Color.gray)
                .frame(maxWidth: .infinity, alignment: .leading)

                Button(action: {
                    
                })
                {
                    Text("Claim Now")
                        .foregroundStyle(Color.white)
                        .frame(width: 120, height: 45)
                        .background(Color.black)
                        .cornerRadius(20)
                }
        }
            .padding()
        .frame(width: .infinity)
        .background(Color("second"))
        .cornerRadius(18)
        .padding()

            Spacer()
            Spacer()
            Spacer()
        }
    }
}
