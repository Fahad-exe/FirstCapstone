// Andulrahman Alshammari


import SwiftUI
import Lottie

struct Onboarding {
    var imageName: String
    var title: String
    var description: String
}

struct OnboardingView: View {
    let onboardingStep = [
        Onboarding(imageName: "Animation1", title: NSLocalizedString("title1", comment: "3"), description: "With a parcel delivery app, users can easily track the status and location of their packages in real-time."),
        Onboarding(imageName: "phone", title: "Flexible Scheduling", description: "Users can schedule delivery times and locations , including same-day or next-day delivery options."),
        Onboarding(imageName: "Animation", title: "Easy Package Management", description: "The app makes it easy to manage multiple packages, including rerouting or rescheduling deliveries if necessary.")
    ]
    @State var animationState: Bool = false
    @State private var currentStep = 0
    @State var showingLoginScreen: Bool = false
    
    init(){
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        NavigationStack{
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
                            
                            VStack(spacing: 10){
                                if  currentStep == 0{
                                    LottieView(animation: .named("Animation1")).playing().looping()
                                        .resizable()
                                        .frame(height: 380)
                                }else if currentStep == 1{
                                    LottieView(animation: .named("Animation2")).playing().looping()
                                        .resizable()
                                        .frame(height: 380)
                                }else if currentStep == 2{
                                    LottieView(animation: .named("Animation3")).playing().looping()
                                        .resizable()
                                        .frame(height: 380)
                                }
                                VStack{
                                    VStack(spacing: 20){
                                        Text(onboardingStep[index].title)
                                            .font(.title2)
                                            .multilineTextAlignment(.center)
                                            .bold()
                                        Text(onboardingStep[index].description)
                                            .foregroundStyle(.gray)
                                            .multilineTextAlignment(.center)
                                            .frame(width: 300)
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
                                        }
                                    })
                                    {
                                        if currentStep ==  0 || currentStep == 1 {
                                            Button(action: {
                                                self.currentStep = onboardingStep.count - 1
                                            }){
                                                Text("Skip")
                                                    .bold()
                                                    .foregroundColor(.color1)
                                                    .frame(maxWidth: .infinity)
                                            }.padding()
                                                .frame(maxWidth: .infinity)
                                                .background(.color2)
                                                .cornerRadius(25)
                                                .frame(width: 132)
                                                .padding(.horizontal)
                                                .foregroundColor(.white)
                                            
                                            HStack{
                                                
                                                Text("Next")
                                                    .bold()
                                                    .padding(.horizontal)
                                                Image(systemName: "arrow.right")
                                            } .padding()
                                                .frame(maxWidth: .infinity)
                                                .background(.color)
                                                .cornerRadius(25)
                                                .frame(width: 152)
                                                .padding(.horizontal)
                                                .foregroundColor(.white)
                                        }
                                        else {
                                            HStack{
                                                NavigationLink(destination: ButtomBarView().navigationBarBackButtonHidden(true)){
                                                    Text("Guest")
                                                        .bold()
                                                        .foregroundColor(.color1)
                                                }
                                                .padding()
                                                    .frame(maxWidth: .infinity)
                                                    .background(.color2)
                                                    .cornerRadius(25)
                                                    .frame(width: 132)
                                                    .padding(.horizontal)
                                                
                                                NavigationLink(destination: SigninView().navigationBarBackButtonHidden(true)){
                                                    Text("Sign in")
                                                        .bold()
                                                }
                                                .padding()
                                                    .frame(maxWidth: .infinity)
                                                    .background(.color)
                                                    .cornerRadius(25)
                                                    .frame(width: 152)
                                                    .padding(.horizontal)
                                                    .foregroundColor(.white)
                                            }
                                        }
                                        
                                    }
                                    
                                }.background(RoundedRectangle(cornerRadius: 25)
                                    .foregroundStyle(Color(uiColor: .systemBackground))
                                    .frame(width: 360,height: 320)
                                )
                                
                            }
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                }
            }
        }
    }
}

#Preview {
    OnboardingView()
}
