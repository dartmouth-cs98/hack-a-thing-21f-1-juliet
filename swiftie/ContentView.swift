//
//  ContentView.swift
//  swiftie
//
//  Created by Juliet Elisa Giraso on 9/21/21.
//  Heavily influenced by Paul Hudson's tutorial: https://www.youtube.com/watch?v=aP-SQXTtWhY&t=9054s

import SwiftUI

struct ContentView: View {
    let location: Location
    var body: some View {
        // responsible for displaying the info about a place.
        ScrollView{
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()

            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)

            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)

            Text(location.description)
                .padding(.horizontal)

            Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top)

            Text(location.more)
                .padding(.horizontal)
        }
        .navigationTitle("Explore")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView(location: Locations().front)
        }
    }
}
