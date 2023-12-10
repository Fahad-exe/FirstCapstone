// Abdulrahman Alshammari

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    @State var messages: [String] = ["Hi there! I'm your courier, and I'm on my way to deliver your package. Are you in the delivery loction?"]
    
    var body: some View {
        NavigationStack{
            
            VStack {
                HStack {
                    NavigationLink(destination:ButtomBarView(selectedTab: 1).navigationBarBackButtonHidden(true)){
                        Image(systemName: "chevron.backward")
                            .font(.headline)
                            .foregroundStyle(.black)
                            .padding([.vertical,.leading],24)
                            .frame(maxWidth: 24,alignment: .leading)
                    }
                    Text("Chat")
                        .font(.headline)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .center)
                        .padding([.trailing],32)
                    
                    
                }
                
            }
            //.padding()
            
            
            ScrollView {
                ForEach(messages, id: \.self) { index in
                    if index.contains("[USER]") {
                        let newIndex = index.replacingOccurrences(of: "[USER]", with: "")
                        
                        HStack {
                            Spacer()
                            Text(newIndex)
                                .padding()
                                .foregroundStyle(.white)
                                .background(.color)
                                .cornerRadius(10)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 10)
                        }
                    } else {
                        HStack {
                            Text(index)
                                .padding()
                                .foregroundStyle(.color1)
                                .background(.color3)
                                .cornerRadius(10)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 10)
                            Spacer()
                        }
                    }
                }.rotationEffect(.degrees(180))
            }.rotationEffect(.degrees(180))
                .background(.gray.opacity(0.1))
            HStack {
                TextField("Enter the message", text: $messageText)
                    .padding()
                    .background(.gray.opacity(0.1))
                    .cornerRadius(25)
                    .onSubmit {
                        sendMessage(message: messageText)
                    }
                
                Button {
                    sendMessage(message: messageText)
                } label: {
                    Image(systemName: "arrow.right")
                        .foregroundStyle(.white)
                        .padding()
                        .background(Circle()
                            .foregroundStyle(.color)
                                    )
                }

            }
            .padding()
        }
    }
    
    func sendMessage(message: String) {
        withAnimation {
            messages.append("[USER]" + message)
            self.messageText = ""
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation {
                messages.append(getResponse(message: message))
            }
        }
    }
}

#Preview {
    ChatView()
}
