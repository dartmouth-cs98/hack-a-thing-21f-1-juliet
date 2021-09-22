//
//  location.swift
//  swiftie
//
//  Created by Juliet Elisa Giraso on 9/21/21.
//

import Foundation

struct Location: Decodable, Identifiable{
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
}
