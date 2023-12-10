// Abdulrahman Alshammari
import SwiftUI

struct SignupView: View {
    @StateObject var vm = UserViewModel()
    @State var fullname = ""
    @State var email = ""
    @State var password = ""
    @State var isRegistrationPresented = false
    @State var isSignUp: Bool = false

    var body: some View {
        ZStack{
            Color.background
                .ignoresSafeArea()
            VStack(spacing: 110) {
                Text("Sign up")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                VStack(spacing: 70) {
                    VStack(spacing: 30) {
                        FullnameField(placeHolder: "Enter your full name", text: $fullname)
                        EmailField(placeHolder: "Enter your email", text: $email)
                        PasswordField(placeHolder: "Enter your password", text: $password)
                    }
                    Button {
                        Task{
                              await vm.signUp(with: email, and: password)
                        }
                    } label: {
                        Text("Sign up")
                            .foregroundStyle(.white)
                            .bold()
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 20)
                                .frame(width: 360)
                                .foregroundStyle(Color.color)
                                        
                            )
                    }
                }
                Spacer()

            }
            .padding()
         }
        }
    }


#Preview {
    SignupView()
}
