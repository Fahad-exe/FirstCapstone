import SwiftUI

struct CustomSegmentedPicker: View {
    @Binding var selectedIndex: Int
    let options: [String]
    
    var body: some View {
        HStack(spacing: -5) {
            ForEach(0..<options.count) { index in
                Button(action: {
                    selectedIndex = index
                }) {
                    Text(options[index])
                        .font(.callout)
                        .foregroundColor(selectedIndex == index ? .white : .black)
                        .frame(width: .infinity, height: 15)
                        .padding()
                }
                .background(selectedIndex == index ? Color("Vouchers") : Color.gray.opacity(0.3))
            }
            .cornerRadius(20)
        }
    }
}
