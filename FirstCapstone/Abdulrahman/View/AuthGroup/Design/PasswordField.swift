// Abdulrahman Alshammari


import SwiftUI

struct PasswordField: View {
        var placeHolder: String
        @Binding var text: String
        
        var body: some View {
            SecureField(placeHolder, text: $text)
                .padding()
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(uiColor: .secondaryLabel), lineWidth: 1)
                }
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
        }
    }

    #Preview {
        PasswordField(placeHolder: "Password", text: .constant(""))
    }

