//
//  ContentView.swift
//  NearMeApp
//
//  Created by Elman Asadi on 9/11/21.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @ObservedObject private var locationManager = LocationManager()
    @State private var search : String = ""
    
    var body: some View {
        
        ZStack(alignment: .top) {
            
            MapView()
            
            TextField("Search", text: self.$search, onEditingChanged: {_ in}) {
                getNearByLandMarks()
            }.textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .offset(y: 44)
            
        }.edgesIgnoringSafeArea(.all)
        
    }
    
    private func getNearByLandMarks() {
        
        guard let location = self.locationManager.location else { return }
        
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = self.search
        request.region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        
        
        let search = MKLocalSearch(request: request)
        
        search.start { response, error in
            guard let response = response , error == nil else {return}
            
            let mapItems = response.mapItems
            
            mapItems.map {
                print($0.placemark)
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
