//
//  ContentView.swift
//  NearMeApp
//
//  Created by Elman Asadi on 9/11/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var locationManager = LocationManager() 
    
    var body: some View {
        MapView() 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
