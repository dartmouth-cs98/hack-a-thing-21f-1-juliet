//
//  locations.swift
//  swiftie
//
//  Created by Juliet Elisa Giraso on 9/21/21.
//  Heavily influenced by Paul Hudson's tutorial: https://www.youtube.com/watch?v=aP-SQXTtWhY&t=9054s

import Foundation

// to hold a list of places or location objects
class Locations: ObservableObject{
    let places: [Location]
    
    // instead of always using the first place in the list,
    // I chose to experiment using a random place
    var front: Location {
        places.randomElement()!
    }
    // reading from the assets files with defensive coding (!) in case anything crashes
    init(){
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
