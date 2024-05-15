//
//  SearchingView.swift
//  AlboAirPort
//
//  Created by daniel ortiz millan on 14/05/24.
//

import SwiftUI

struct SearchingView: View {
    @State private var searchText = ""
   // @State var viewModel: // aqui va el modelo
    
    var body: some View {
        
        VStack {
           
            Text("Airport Search")
                            .font(.title)
                            .padding()
          
            TextField("Search", text: $searchText)
                .padding()
                .background(Color(.systemGray5))
                .cornerRadius(10)
                .padding(.horizontal)
            
            Button(action: {
                // Aquí puedes agregar la lógica para realizar la búsqueda
                print("Realizar búsqueda")
            }) {
            
                Text("Search")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.horizontal)
            
                
            }
        }
    }
}


struct SearchingView_Previews: PreviewProvider {
    static var previews: some View {
        SearchingView()
    }
}



//import SwiftUI
//
//struct SearchingView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//#Preview {
//    SearchingView()
//}
