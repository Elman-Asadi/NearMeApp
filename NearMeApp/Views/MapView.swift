//
//  MapView.swift
//  NearMeApp
//
//  Created by Elman Asadi on 9/11/21.
//

import UIKit
import MapKit
import SwiftUI

struct MapView : UIViewRepresentable {
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        
        let map = MKMapView()
        map.showsUserLocation = true
        map.delegate = context.coordinator
        
        return map
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
     
}
