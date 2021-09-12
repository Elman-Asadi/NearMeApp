//
//  Coordinator.swift
//  NearMeApp
//
//  Created by Elman Asadi on 9/11/21.
//

import Foundation
import MapKit


final class Coordinator: NSObject, MKMapViewDelegate {
    
    var control : MapView
    
    init(_ control: MapView) {
        self.control = control
    }
    
    func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView]) {
        
        if let annotationView = views.first {
            if let annotaion = annotationView.annotation {
                if annotaion is MKAnnotation {
                    
                    let region = MKCoordinateRegion(center: annotaion.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
                    
                    mapView.setRegion(region, animated: true)
                    
                }
            }
        }
        
    }
    
}
