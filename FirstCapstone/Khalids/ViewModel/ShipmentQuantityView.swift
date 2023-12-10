import SwiftUI

struct ShipmentQuantityView: View {
    
    @State var weight: String = "1 Kg"
    @State private var integerNumber: Int = 1
    @StateObject var vm = ViewModel()
    @State private var selectedOption: String = "Express"

    var body: some View {
        VStack{
            
            Text(LocalizedStringKey("shippmentName"))
                .font(.footnote)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ForEach(vm.items, id: \.id) { item in
                VStack{
                    Text(item.name_en)
                        .foregroundStyle(Color("fourth"))
                }
                .frame(width: .infinity, height: 50, alignment: .leading)
                .padding(.horizontal)
                .background(Color.gray.opacity(0.5))
                .cornerRadius(18)
            }
            .frame(width: .infinity, height: 50)
            .padding(.horizontal)
            .cornerRadius(18)
        }
        .padding(.horizontal)
        
        HStack{
            
            VStack(alignment: .leading){
                Text(LocalizedStringKey("weight"))
                    .font(.footnote)
                    .foregroundStyle(Color.gray.opacity(0.8))
                HStack{
                    TextField(" ", text: $weight)
                        .frame(width: 50, height: 35, alignment: .leading)
                        .modifier(ClearButton(text: $weight))
                }
            }
            
            Spacer()
            
            VStack(alignment: .leading){
                Text(LocalizedStringKey("quantity"))
                    .font(.footnote)
                    .foregroundStyle(Color.gray.opacity(0.8))
                
                Text("\(integerNumber) Package")
                    .frame(width: 80, height: 35, alignment: .leading)
            }
            
            Spacer()
            
            HStack {
                Button(action: {
                    integerNumber -= 1
                }) {
                    Image(systemName: "minus")
                        .foregroundStyle(Color.gray)
                        .frame(width: 45, height: 35)
                        .clipShape(Circle())
                }
                
                Button(action: {
                    integerNumber += 1
                }){
                    Image(systemName: "plus")
                        .foregroundColor(.black)
                        .frame(width: 45, height: 35)
                        .background(Color("second"))
                        .clipShape(Circle())
                }
            }
        }
        .padding()
        .onAppear {
            vm.fetchData()
        }
    }
}

//#Preview {
//    ShipmentQuantityView()
//}
