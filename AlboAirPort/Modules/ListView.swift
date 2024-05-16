//
//  ListView.swift
//  AlboAirPort
//
//  Created by daniel ortiz millan on 14/05/24.
// Aqui va va la logica para pintar la lista del resultado de la busqueda

//import SwiftUI
//
//struct ListView: View {
//    var body: some View {
//        Text("Airport location list")
//    }
//}
//
//#Preview {
//    ListView()
//}
 
 import SwiftUI

// Vista ListView para mostrar la lista de aeropuertos
struct ListView: View {
    @ObservedObject var viewModel = AirportViewModel()
    var searchText = ""
    
    var body: some View {
        List {
            ForEach(viewModel.model ?? [], id: \.id) { item in
                Text(item.name)
            }
        }
        .listStyle(InsetGroupedListStyle())
        .onAppear {
            viewModel.fetchAirports(Country: searchText)
        }
    }
}

//struct ListView_Previews: PreviewProvider {
//    static var previews: some View {
#Preview {
   let viewModel = AirportViewModel()
      return  ListView(viewModel: viewModel)
    }

 
 
