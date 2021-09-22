//
//  location.swift
//  swiftie
//
//  Created by Juliet Elisa Giraso on 9/21/21.
//  Heavily influenced by Paul Hudson's tutorial: https://www.youtube.com/watch?v=aP-SQXTtWhY&t=9054s

import Foundation

// to store information about a place in a single object
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
