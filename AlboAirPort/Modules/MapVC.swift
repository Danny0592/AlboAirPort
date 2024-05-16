//
//  MapVC.swift
//  AlboAirPort
//
//  Created by daniel ortiz millan on 15/05/24.
// este archivo es para la configuracion del mapa
//cocoa touch
// Aqui va la logica para pintar el mapa los resultados de la busqueda

import UIKit
import SwiftUI
import MapKit

class MapVC: UIViewController {
    var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Inicializar el mapa
        mapView = MKMapView(frame: self.view.bounds)
        
        // Permitir que el mapa se ajuste al tamaño de la vista principal
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // Agregar el mapa a la vista
        self.view.addSubview(mapView)
    }
}

struct mapViewControllerBridge: UIViewControllerRepresentable{
    
    func makeUIViewController(context: Context) -> MapVC {
        return MapVC()
    }
    
    func updateUIViewController(_ uiViewController: MapVC, context: Context) {
        
        // Vista de contenido del mapa
        struct MapContentView: View {
            
            
            var body: some View {
                mapViewControllerBridge()
            }
        }
        
        // Vista previa
        struct MapContentView_Previews: PreviewProvider {
            static var previews: some View {
                MapContentView()
            }
        }
    }
}
