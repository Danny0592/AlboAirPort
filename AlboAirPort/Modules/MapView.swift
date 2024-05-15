//
//  MapListView.swift
//  AlboAirPort
//
//  Created by daniel ortiz millan on 14/05/24.
//

import SwiftUI
import MapKit

struct mapView: UIViewRepresentable {
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
    
    func makeUIView(context: Context) ->
    MKMapView {
        
        MKMapView(frame: .zero)
    }
}
struct mapContentView: View {
    var body: some View {
        TabView {
            mapView()
            
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("Mapa")
                }
            
            ListView()
                .tabItem {
                    Image(systemName: "square.fill")
                    Text("Otra Vista")
                }
        }
    }
}

struct MapV: View {
    var body: some View {
        mapView()
            .edgesIgnoringSafeArea(.all)
    }
}

struct Map_Previews: PreviewProvider {
    static var previews: some View {
        mapContentView()
    }
}






#Preview {
    mapView()
}
