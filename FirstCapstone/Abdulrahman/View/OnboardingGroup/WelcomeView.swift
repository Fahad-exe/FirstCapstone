// Abdulrahman Alshammari


import SwiftUI

struct WelcomeView: View {
    @StateObject var mainVm = LocalizationViewModel()
    @State var isActive = false
    @State var size = 0.8
    @State var opacity = 0.5
    var body: some View {
        if isActive {
            OnboardingView()
        }else{
            ZStack{
                Color.color
                    .ignoresSafeArea()
                VStack {
                    Image("welcome logo")
                        .resizable()
                        .frame(width: 140, height: 140)
                        .padding()
                    Text("Welcome to QUAREER")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.white)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .padding()
                
                .onAppear() {
                    withAnimation(.easeIn(duration: 0.7)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    isActive = true
                }
            }
        }
    }
}

#Preview {
    WelcomeView()
}
