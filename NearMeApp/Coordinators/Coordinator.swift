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
    
}
