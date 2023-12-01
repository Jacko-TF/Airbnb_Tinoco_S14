//
//  PlaceItem.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 1/12/23.
//

import SwiftUI

struct PlaceItem: View {
    var image:String
    var location:String
    var punctuation:String
    var type:String
    var date:String
    var total:String
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10)
        {
            AsyncImage(url: URL(string: image)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 362, height: 323)
            .cornerRadius(12)
            HStack{
                Text(location)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "star.fill")
                    .font(.system(size: 12))
                Text(punctuation)
            }
            Text(type)
                .fontWeight(.light)
                .foregroundStyle(.gray)
            Text(date)
                .fontWeight(.light)
                .foregroundStyle(.gray)
            Text(total)
                .fontWeight(.semibold)
        }
    }
}

struct PlaceItem_Previews: PreviewProvider {
    static var previews: some View {
        List{
            PlaceItem(image: "https://cdn.tiqets.com/wordpress/blog/wp-content/uploads/2017/08/03134557/24-hours-in-new-york-1-1024x570.jpg", location: "Harlingen, Netherlands", punctuation: "4.76", type: "Profesional Host", date: "18-23 Dec", total: "$1,065 total")
        }.listStyle(.inset)
    }
}
