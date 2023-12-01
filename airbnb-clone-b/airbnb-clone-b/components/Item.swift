//
//  Item.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 3/11/23.
//

import SwiftUI

struct Item: View {
    var image:String
    var location:String
    var punctuation:String
    var type:String
    var date:String
    var total:String
    var body: some View {
         
        VStack(alignment: .leading, spacing: 10)
        {
            Image(image)
                .frame(width: 362, height: 323)
                .aspectRatio(contentMode: .fit)
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

struct Item_Previews: PreviewProvider {
    static var previews: some View {
        List{
            Item(image: "venecia", location: "Harlingen, Netherlands", punctuation: "4.76", type: "Profesional Host", date: "18-23 Dec", total: "$1,065 total")
        }.listStyle(.inset)
    }
}
