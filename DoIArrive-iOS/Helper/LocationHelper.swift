//
//  LocationHelper.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 16.08.23.
//

import Foundation
import CoreLocation
import CoreLocationUI

class LocationHelper: NSObject, ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    
    override init() {
        super.init()
        manager.delegate = self
        
    }
    
    func requestLocation() {
        if (manager.authorizationStatus != CLAuthorizationStatus.authorizedWhenInUse) {
            print("I am here")
            manager.requestWhenInUseAuthorization()
        }
        manager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        // Error handling
        print("Error requesting location")
    }
    
}
