//
//  PlaceViewModel.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 1/12/23.
//

import Foundation


class PlaceViewModel: ObservableObject {
    @Published var airbnb: AirBnb = AirBnb( places: [Places] ())
    
    func loadData() async {
        guard let url = URL(string: "https://api-airbnb-basic.onrender.com/airbnb") else {
            print("Invalid URL")
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decoder = try? JSONDecoder().decode(AirBnb.self, from: data) {
                DispatchQueue.main.async(execute: {
                    self.airbnb = decoder
                })
            }
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
}
