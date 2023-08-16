//
//  LocationHelper.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 16.08.23.
//

import Foundation
import CoreLocation
import CoreLocationUI
import SwiftUI

class LocationHelper: NSObject, ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()
    
    @Published var location: CLLocation?
    
    @Published var locationString: String = ""
    
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
        location = locations.first
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        // Error handling
        print("Error requesting location")
    }
    
    func lookUpCurrentLocation(completionHandler: @escaping (CLPlacemark?)
                               -> Void ) {
        // Use the last reported location.
        if let lastLocation = self.location {
            let geocoder = CLGeocoder()
                
            // Look up the location and pass it to the completion handler
            geocoder.reverseGeocodeLocation(lastLocation,
                        completionHandler: { (placemarks, error) in
                if error == nil {
                    let firstLocation = placemarks?[0]
                    completionHandler(firstLocation)
                }
                else {
                 // An error occurred during geocoding.
                    completionHandler(nil)
                }
            })
        }
        else {
            // No location was available.
            completionHandler(nil)
        }
    }
    
}
