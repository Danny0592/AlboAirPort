//
//  MapListView.swift
//  AlboAirPort
//
//  Created by daniel ortiz millan on 14/05/24.
//

import SwiftUI
import MapKit

struct tabBar: View {
    var query = ""
    
    var body: some View {
        TabView {
            mapView(searchText: query)
    
                .tabItem {
                    Image(systemName: "location.north.circle")
                    Text("Map")
                }
            
            // Segunda pestaña
            ListView(searchText: query)
                .tabItem {
                    Image(systemName: "list.bullet.rectangle")
                    Text("List")
            }
        }
    }
}

struct mapView: View {
    @ObservedObject var airportViewModel = AirportViewModel()
    @State var searchText = ""
    
    var body: some View {
        mapViewControllerBridge()
            .onAppear {
                
                airportViewModel.fetchAirports(Country: searchText)
        }
    }
}
//struct tabBarList: View {
//    var body: some View {
//        tabBar()
//    }
//}


#Preview {
    mapViewControllerBridge()
}


