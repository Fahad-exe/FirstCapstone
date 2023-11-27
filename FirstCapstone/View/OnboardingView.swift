//
//  OnboardingView.swift
//  FirstCapstone
//
//  Created by ABDULRAHMAN AL-KHALED on 27/11/2023.
//

import SwiftUI

struct Onboarding {
    var imageName: String
    var title: String
    var description: String
}

struct OnboardingView: View {
    let onboardingStep = [
        Onboarding(imageName: "bicycle", title: "Convenient Tracking", description: "With a parcel delivery app, users can easily track the status and location of their packages in real-time."),
        Onboarding(imageName: "faster", title: "Flexible Scheduling", description: "With a parcel delivery app, users can easily track the status and location of their packages in real-time."),
        Onboarding(imageName: "phone", title: "Easy Package Management", description: "With a parcel delivery app, users can easily track the status and location of their packages in real-time.")
    ]
    
    @State private var currentStep = 0
    init(){
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        ZStack{
            Color.color
                .ignoresSafeArea()
            Image("circle")
                .resizable()
                .frame(width: 400, height: 567)
                .offset(CGSize(width: -10.0, height: -160.0))
            VStack{
                TabView (selection: $currentStep){
                    ForEach(0..<onboardingStep.count){ index in
                        
                        VStack(spacing: 60){
                            Image(onboardingStep[index].imageName)
                                .resizable()
                                .frame(width: 268, height: 263)
                                .padding()
                            
                            VStack{
                                VStack(spacing: 20){
                                    Text(onboardingStep[index].title)
                                        .font(.title2)
                                        .multilineTextAlignment(.center)
                                        .bold()
                                    Text(onboardingStep[index].description)
                                        .foregroundStyle(.gray)
                                        .multilineTextAlignment(.center)
                                }.padding()
                                VStack{
                                    HStack{
                                        ForEach(0..<onboardingStep.count){index in
                                            if index == currentStep{
                                                Rectangle()
                                                    .frame(width: 20, height: 10)
                                                    .cornerRadius(10)
                                                    .foregroundColor(.color)
                                                    .padding(.vertical)
                                            }else{
                                                Circle()
                                                    .frame(width: 10, height: 10)
                                                    .foregroundColor(.gray)
                                                
                                            }}
                                    }
                                }
                                    
                                    Button(action: {
                                        if self.currentStep < onboardingStep.count - 1{
                                            self.currentStep += 1
                                        }else{
                                        }
                                        
                                    })
                                    {
                                        Button(action: {
                                            self.currentStep = onboardingStep.count - 1
                                        }){
                                            Text(currentStep < onboardingStep.count - 1 ? "Skip" : "Create account")
                                                .foregroundColor(.black)
                                                .frame(maxWidth: .infinity)
                                        }.padding()
                                            .frame(maxWidth: .infinity)
                                            .background(.gray.opacity(0.2))
                                            .cornerRadius(25)
                                            .frame(width: 152)
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                        
                                        HStack{
                                            
                                            Text(currentStep < onboardingStep.count - 1 ? "Next" : "Sign in")
                                                .bold()
                                                .padding(.horizontal)
                                            Image(systemName: "arrow.right")
                                                
                                        } .padding()
                                            .frame(maxWidth: .infinity)
                                            .background(.color)
                                            .cornerRadius(25)
                                            .frame(width: 152)
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                    }
                                
                            }.background(RoundedRectangle(cornerRadius: 25)
                                .foregroundStyle(.white)
                                .frame(height: 320)
                            )
                            .padding(32)
                            
                        }
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                }
            }
        }
    }
    
#Preview {
    OnboardingView()
}
