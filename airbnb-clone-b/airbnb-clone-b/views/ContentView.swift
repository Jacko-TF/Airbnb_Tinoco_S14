//
//  ContentView.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var placeViewModel = PlaceViewModel()
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 50){
                    Category(icon: "ovni", text: "OMG!")
                    Category(icon: "beaches", text: "Beaches")
                    Category(icon: "home", text: "Tiny Home")
                    Category(icon: "golf", text: "Golfing")
                    Category(icon: "landscape", text: "Amazing")
                }
            }.padding([.horizontal])
            Divider()
            List(placeViewModel.airbnb.places, id: \.name){ item in
                PlaceItem(image: item.image_url, location: item.name, punctuation: String(item.rating), type: item.location.city + ", " + item.location.country, date: item.date, total: "$"+String(item.price) + " total")
            }.task {
                await placeViewModel.loadData()
            }.listStyle(.inset)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
