//
//  LocationResult.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 14.08.23.
//

import Foundation

class LocationResult : Identifiable, ObservableObject {
    var id = UUID()
    var location: String = ""
    var isFavorite: Bool = false
    
    init(location: String) {
        self.location = location
    }
    
    func toggleFav() {
        isFavorite = !isFavorite
    }
}
