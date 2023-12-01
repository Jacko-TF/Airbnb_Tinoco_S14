//
//  MainView.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 10/11/23.
//

import SwiftUI

struct MainView: View {
    init(){
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    TabItem(image: "magnifing", label: "Explore")
                }
            PlaceView()
                .tabItem {
                    TabItem(image: "heart", label: "Wishlist")
                }
            TripsView()
                .tabItem {
                    TabItem(image: "logo-icon", label: "Trips")
                }
            InboxView()
                .tabItem {
                    TabItem(image: "inbox", label: "Inbox")
                }
            ProfileView()
                .tabItem {
                    TabItem(image: "profile", label: "Profile")
                }
        }
        .tint(Color("AirbnbPrimary"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
