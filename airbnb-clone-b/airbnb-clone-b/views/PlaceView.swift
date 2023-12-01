//
//  PlaceView.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 24/11/23.
//

import SwiftUI

struct PlaceView: View {
    var body: some View {
        
        VStack{
            ZStack{
                AutoScroller(imageNames: ["item1", "venecia", "venecia2"], size: 450, imagesize: 600)
                VStack{
                    HStack{
                        Image(systemName: "chevron.backward.circle.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 35))
                        
                        Spacer()
                        
                        Image(systemName: "square.and.arrow.up.circle.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 35))
                        
                        Image(systemName: "heart.circle")
                            .foregroundColor(.white)
                            .font(.system(size: 35))
                        
                    }
                    Spacer()
                    HStack(spacing: 20){
                        Image(systemName: "pause.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                        
                        Image(systemName: "speaker.slash.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                        
                        Spacer()
                    }
                }.frame(width: 350, height: 370)
            }.frame(height: 420)
            Spacer()
            VStack(alignment: .leading){
                Text("Venice Canal Tours")
                    .fontWeight(.semibold)
                    .font(.system(size: 30))
                HStack{
                    Image(systemName: "star.fill")
                        .font(.system(size: 15))
                    Text("4.76")
                        .padding(.leading, -6)
                    Text("(116) .")
                        .fontWeight(.light)
                        .foregroundColor(.gray)
                    Text("Venice, Italy")
                        .bold()
                        .underline()
                }.padding(.top, -5)
                Divider()
                    .padding(.top, 25)
                HStack{
                    Text("Experience hosted by Shaun")
                        .fontWeight(.semibold)
                        .font(.system(size: 23))
                        .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                    Image("item1")
                        .resizable()
                        .frame(width: 53, height: 50)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(100)
                        .saturation(0.0)
                }.padding(.top, 15)
                Divider()
                HStack{
                    VStack(alignment: .leading){
                        HStack{
                            Text("From $91")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                            Text("/group")
                                .font(.system(size: 15))
                        }.padding(.bottom, 2)
                        Text("Show all prices")
                            .fontWeight(.light)
                            .underline()
                            .foregroundColor(.gray)
                            .font(.system(size: 15))
                    }
                    Spacer()
                    Button {
                    } label: {
                        Text("Show dates")
                            .padding()
                            .background(Color("AirbnbSecondary"))
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }.padding(.bottom, 20)
            }.padding(20)
        }
    }
}

struct PlaceView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceView()
    }
}
