import SwiftUI
//
//struct SearchBar: View {
//
//    @Binding var searchText: String
//
//    var body: some View {
//        HStack {
//            TextField("Search", text: $searchText)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .padding(.horizontal)
//
//            Button(action: {
//                searchText = ""
//            }) {
//                Image(systemName: "xmark.circle.fill")
//                    .foregroundColor(.gray)
//            }
//            .padding(.trailing)
//        }
//    }
//}

struct SearchBar: View {

    @Binding var searchText: String

    var body: some View {
        HStack {
            TextField("Search", text: $searchText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            Button(action: {
                searchText = ""
            }) {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.gray)
            }
            .padding(.trailing)
        }
        .frame(width: .infinity, height: 45)
        .padding(.horizontal)
        .cornerRadius(18)
    }
}
