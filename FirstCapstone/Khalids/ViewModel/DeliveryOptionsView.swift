import SwiftUI

struct DeliveryOptionsView: View {
    
    @State var weight: String = "1 Kg"
    @State private var integerNumber: Int = 1
    @StateObject var vm = ViewModel()
    @State private var selectedOption: String = "Express"

    var body: some View {
        VStack{
            Text(LocalizedStringKey("deliveryOptions"))
                .font(.headline)
                .fontWeight(.regular)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
            Picker(selection: $selectedOption, label: Text("")) {
                Text(LocalizedStringKey("regular")).tag("Regular")
                Text(LocalizedStringKey("express")).tag("Express")
            }
            .pickerStyle(.segmented)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(20)
            .padding(.horizontal)
            
            if selectedOption == "Regular"{
                
                VStack{
                    
                    HStack{
                        HStack{
                            Image(systemName: "truck.box")
                                .scaledToFit()
                            Text("3 Days")
                        }
                        .foregroundColor(Color("fourth"))
                        .frame(height: 36)
                        .padding(.horizontal)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(20)
                        
                        Spacer()
                        
                        HStack{
                            Text("$18")
                                .foregroundStyle(Color.black)
                        }
                        .frame(height: 36)
                        .padding(.horizontal)
                        .background(Color("second"))
                        .cornerRadius(20)
                    }
                    
                    Text("""
                     Luctus nam arcu est venenatis semper velit. Lectus enim ut tristique nunc.
                     * Neque massa nec scelerisque urna mauris.
                     * Quisque egestas tempus arcu at tortor amet egestas vivamus.
                     """)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(width: 327, height: 204)
                .padding()
                .background(Color("third"))
                .cornerRadius(20)
            }else if selectedOption == "Express"{
                
                VStack{
                    
                    HStack{
                        HStack{
                            Image(systemName: "truck.box")
                                .scaledToFit()
                            Text(LocalizedStringKey("sameDay"))
                        }
                        .foregroundColor(Color("fourth"))
                        .frame(height: 36)
                        .padding(.horizontal)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(20)

                        Spacer()
                        
                        HStack{
                            Text("$22")
                                .foregroundStyle(Color.black)

                        }
                        .foregroundColor(Color("fourth"))
                        .frame(height: 36)
                        .padding(.horizontal)
                        .background(Color("second"))
                        .cornerRadius(20)
                    }
                    
                    Text("""
                     Luctus nam arcu est venenatis semper velit. Lectus enim ut tristique nunc.
                     * Neque massa nec scelerisque urna mauris.
                     * Quisque egestas tempus arcu at tortor amet egestas vivamus.
                     """)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(width: 327, height: 204)
                .padding()
                .background(Color("third"))
                .cornerRadius(20)

            }
        }
        
        Spacer(minLength: 15)
        
        HStack{
            
            VStack(alignment: .leading){
                Text(LocalizedStringKey("subTotal"))
                    .font(.headline)
                
                Text(LocalizedStringKey("deliveredToServicePoint"))
                    .font(.caption)
            }.padding(.leading)
            
            Spacer()
            
            Text("$22")
                .font(.headline)
                .padding(.trailing)
            
        }
        .frame(width: .infinity, height: 65)
        .background(Color("third"))
        .cornerRadius(20)
        .padding(.horizontal)
        
        .onAppear {
            vm.fetchData()
        }

    }
}
