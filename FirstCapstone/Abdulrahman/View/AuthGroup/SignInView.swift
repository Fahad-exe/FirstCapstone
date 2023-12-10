// Abdulrahman Alshammari

import SwiftUI

struct SigninView: View {
    @StateObject var vm = UserViewModel()
    @State var email = ""
    @State var password = ""
    @State var isRegistrationPresented = false
    @State var isSignUp: Bool = false
    
    var body: some View {
        ZStack{
            Color.background
                .ignoresSafeArea()
            VStack(spacing: 70) {
                Text("signin")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(Color(uiColor: .label))
                VStack(spacing: 15){
                    EmailField(placeHolder: "Enter your email", text: $email)
                    PasswordField(placeHolder: "Enter your password", text: $password)
                    
                    Button("New User? Register here") {
                        isRegistrationPresented.toggle()
                    }
                    .sheet(isPresented: $isRegistrationPresented) {
                        SignupView()
                    }
                    .foregroundStyle(Color.color1)
                    .padding()
                    Button {
                        Task{
                            await vm.signIn(with: email, and: password)
                        }
                    } label: {
                        Text("Sign in")
                            .foregroundStyle(.white)
                            .bold()
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 20)
                                .frame(width: 360)
                                .foregroundStyle(Color.color)
                                        
                            )
                    }
                }
                VStack{
                    HStack{
                        Rectangle()
                            .foregroundStyle(.color1)
                            .frame(width: 100, height: 0.5)
                        Text("Or continue with")
                        
                        Rectangle()
                            .foregroundStyle(.color1)
                            .frame(width: 100, height: 0.5)
                    }
                    HStack(spacing: 80){
                        HStack{
                            Image(systemName: "apple.logo")
                            Text("Apple")
                        }.padding()
                            .background(RoundedRectangle(cornerRadius: 30.0)
                                .stroke(.color2, lineWidth: 1.0)
                                .frame(width: 120)
                            )
                        
                        HStack{
                            Image("Google")
                                .resizable()
                                .frame(width: 15, height: 15)
                            Text("Google")
                        }.padding()
                            .background(RoundedRectangle(cornerRadius: 30.0)
                                .stroke(.color2, lineWidth: 1.0)
                                .frame(width: 120)
                            )
                    }.padding()
                }
                Spacer()
            }
            .padding()
        }
    }
}


#Preview {
    SigninView()
}
