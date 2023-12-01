//
//  TabItem.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 10/11/23.
//

import SwiftUI

struct TabItem: View {
    var image:String
    var label:String
    
    var body: some View {
        VStack{
            Image(image)
                .renderingMode(.template)
            Text(label)
        }
    }
}

struct TabItem_Previews: PreviewProvider {
    static var previews: some View {
        TabItem(image: "inbox", label: "Inbox")
    }
}
