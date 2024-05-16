//
//  ContentView.swift
//  AlboAirPort
//
//  Created by daniel ortiz millan on 09/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            SearchingView(searchText: "")
        }
//        .padding()
    }
}

#Preview {
    ContentView()
}





//struct ContentView: View {
//    
//   let airportFinder = APIClient()
//    
//    var body: some View {
//                Text("Hello, World!")
//                    .onAppear {
//                       self.fetchAirports()
//                    }
//            }
//        
//        func fetchAirports() {
//            airportFinder.findAirports(latitude: 32.9222, longitude: -97.0409) { result in
//                switch result {
//                case .success(let response):
//                    print("Response: \(response)")
//                    // Handle success
//                    
//                case .failure(let error):
//                    print("Error: \(error)")
//                    // Handle error
//                }
//            }
//        }
//    }
//    
//    struct ContentView_Previews: PreviewProvider {
//        static var previews: some View {
//            ContentView()
//        }
//    }

