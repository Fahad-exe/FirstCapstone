// Abdulrahman Alshammari

import SwiftUI

struct EmailField: View {
    var placeHolder: String
    @Binding var text: String
    
    var body: some View {
        TextField(placeHolder, text: $text)
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
    EmailField(placeHolder: "Email address", text: .constant(""))
}
