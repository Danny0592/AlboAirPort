//
//  SearchingView.swift
//  AlboAirPort
//
//  Created by daniel ortiz millan on 14/05/24.
//

import SwiftUI

struct SearchingView: View {
    @State var searchText = ""
    @State private var navigateToMap = false
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Airport Search")
                    .font(.title)
                    .padding()
                
                TextField("Enter country", text: $searchText)
                    .padding()
                    .background(Color(.systemGray5))
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                    .padding()
                NavigationLink(destination: tabBar(query: searchText)) {
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
}

#Preview {
    SearchingView()
}
