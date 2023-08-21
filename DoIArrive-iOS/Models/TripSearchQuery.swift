//
//  SearchQuery.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 21.08.23.
//

import Foundation

/*
 * struct: TripSearchQuery
 * Data object to pack search query that will be used to search for a trip.
 * Storing it in class symplifies jsonifying the object
 */

struct TripSearchQuery {
    let from: String
    let to: String
    let via: [String]?
    let time: Date
    let isDepTime: Bool
}
