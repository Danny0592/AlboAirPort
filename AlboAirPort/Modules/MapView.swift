//
//  MapListView.swift
//  AlboAirPort
//
//  Created by daniel ortiz millan on 14/05/24.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func updateUIView(_ uiView: MKMapView, context: Context) {

    }
    
   func makeUIView(context: Context) ->
        MKMapView {
            
            MKMapView(frame: .zero)
    }
    }

/*struct MapListView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}*/

#Preview {
    MapView()
}
