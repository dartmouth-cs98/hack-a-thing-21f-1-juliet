//
//  swiftieApp.swift
//  swiftie
//
//  Created by Juliet Elisa Giraso on 9/21/21.
//  Heavily influenced by Paul Hudson's tutorial: https://www.youtube.com/watch?v=aP-SQXTtWhY&t=9054s

import SwiftUI

@main
struct swiftieApp: App {
    @StateObject var locations = Locations()

    var body: some Scene {
        WindowGroup {
            TabView {
                // responsible for displaying the primary/front place
                NavigationView {
                    ContentView(location: locations.front)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Explore")
                }
                // responsible for displaying the map
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Adventure")
                }
            }
            .environmentObject(locations)
        }
    }
}
