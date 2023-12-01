//
//  ProfileView.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 10/11/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 50){
            VStack(alignment: .leading, spacing: 10){
                Image("item1")
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(.infinity)
                Text("Hi, I'm Jacko")
                    .bold()
                    .font(.system(size: 30))
                Text("Joined in 2024")
                    .foregroundColor(.gray)
            }
            .padding([.horizontal])
            Divider()
            VStack(alignment: .leading, spacing: 15){
                Text("Identity verification")
                    .bold()
                    .font(.system(size: 18))
                Text("Show others you're really you with the identity verification badge")
                    .font(.system(size: 16))
                Button(action:{
                    print("Get the badge")
                    }, label: {
                        Text("Get the badge")
                            .foregroundColor(.black)
                            .padding()
                            .overlay{
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.black, lineWidth: 1)
                            }
                    })
                }
            .padding([.horizontal])
            Divider()
            VStack(alignment: .leading, spacing: 30){
                HStack(alignment:.top, spacing: 15){
                    Image("home")
                    VStack(alignment: .leading, spacing: 5){
                        Text("Some info is shown in its original language.")
                            .font(.system(size:14))
                        Text("Translate")
                            .font(.system(size:14))
                            .underline()
                            .bold()
                        }
                    }
                Text("Jacko confirmed")
                    .font(.system(size:30))
                    .bold()
                HStack{
                    Image(systemName: "checkmark")
                    Text("Phone Number")
                        .font(.system(size:16))
                    }
                }
            .padding([.horizontal])
            Divider()
            }
        .multilineTextAlignment(.leading)
        }
    }


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
