import SwiftUI

struct Vouchers: View {
    var body: some View {

            HStack{
                Button(action: {
                    
                })
                {
                    Image(systemName: "chevron.left")
                }
                
                Spacer()
                
                Text("Vouchers")
                    .font(.title2)
                
                Spacer()
            }
            .foregroundStyle(Color("fourth"))
            .padding(.horizontal)
        ScrollView{

            Spacer(minLength: 25)
            
                VStack(alignment: .leading){
                    Text("Save up to 30%")
                    .font(.title)
                    .bold()
                    .foregroundStyle(Color.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                    Text("Use code GET30 and save up to 45% cost.")
                    .font(.title2)
                    .foregroundStyle(Color.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)

                    Button(action: {
                        
                    })
                    {
                        Text("Claim Now")
                            .foregroundStyle(Color.white)
                            .frame(width: 120, height: 45)
                            .background(Color.black)
                            .cornerRadius(20)
                    }
            }
                .padding()
            .frame(width: .infinity)
            .background(Color("second"))
            .cornerRadius(18)
            .padding()

                
                VStack(alignment: .leading){
                    Text("Save up to 30%")
                    .font(.title)
                    .bold()
                    .foregroundStyle(Color.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                    Text("Use code GET30 and save up to 45% cost.")
                    .font(.title2)
                    .foregroundStyle(Color.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)

                    Button(action: {
                        
                    })
                    {
                        Text("Claim Now")
                            .foregroundStyle(Color.white)
                            .frame(width: 120, height: 45)
                            .background(Color.black)
                            .cornerRadius(20)
                    }
            }
                .padding()
            .frame(width: .infinity)
            .background(Color("second"))
            .cornerRadius(18)
            .padding()
                VStack(alignment: .leading){
                    Text("Save up to 30%")
                    .font(.title)
                    .bold()
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                    Text("Use code GET30 and save up to 45% cost.")
                    .font(.title2)
                    .foregroundStyle(Color.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)

                    Button(action: {
                        
                    })
                    {
                        Text("Claim Now")
                            .foregroundStyle(Color.white)
                            .frame(width: 120, height: 45)
                            .background(Color.black)
                            .cornerRadius(20)
                    }
            }
                .padding()
            .frame(width: .infinity)
            .background(Color("Vouchers"))
            .cornerRadius(18)
            .padding()
        }
        .background(Color("background"))
        .ignoresSafeArea()
        }
    }

#Preview {
    Vouchers()
}
