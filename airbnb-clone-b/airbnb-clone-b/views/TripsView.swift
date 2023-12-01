//
//  TripsView.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 10/11/23.
//

import SwiftUI
import MapKit

struct TripsView: View { @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -12.0450947, longitude: -76.9545933), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            VStack {
                Spacer()
                
                HStack {
                    ZStack(alignment: .leading){
                        Image("item1")
                            .resizable()
                            .frame(width: 120)
                        VStack(){
                            HStack{
                                Image(systemName: "xmark")
                                    .foregroundColor(.white)
                                    .font(.system(size: 12))
                                    .padding(8)
                            }.background(.gray)
                            .aspectRatio(contentMode: .fit)
                                .cornerRadius(.infinity)
                            Spacer()
                        }.padding(.vertical, 8)
                            .padding(.horizontal,8)
                    }
                    VStack(alignment: .leading, spacing: 10) {
                        HStack{
                            Text("La Calera, Colombia")
                                .font(.caption)
                                .fontWeight(.semibold)
                            Spacer()
                            Image(systemName: "heart")
                                .font(.system(size: 16))
                        }
                        Spacer()
                        Text("Nov 19 - 24")
                            .font(.caption)
                            .fontWeight(.light)
                        HStack(spacing:3){
                            Text("S/268")
                                .font(.caption)
                                .fontWeight(.semibold)
                            Text("night")
                                .font(.caption)
                            Spacer()
                            Image(systemName: "star.fill")
                                .font(.system(size: 10))
                            Text("4.91")
                                .font(.caption)
                                .fontWeight(.semibold)
                        }
                    }
                    .padding(.vertical)
                    Spacer()
                }
                .frame(height: 120)
                .background(.white)
                .cornerRadius(12)
            }
            .padding()
        }
    }
}

struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView()
    }
}
