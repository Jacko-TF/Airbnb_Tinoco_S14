//
//  AutoScroller.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 24/11/23.
//

import SwiftUI


struct AutoScroller: View {
    var imageNames: [String]
    var size: CGFloat
    var imagesize : CGFloat
    let timer = Timer.publish(every: 3.0, on: .main, in: .common).autoconnect()
    
    @State private var selectedImageIndex: Int = 0
    
    var body: some View {
        ZStack {
            
            TabView(selection: $selectedImageIndex) {
                // Step 6: Iterate Through Images
                ForEach(0..<imageNames.count, id: \.self) { index in
                    ZStack(alignment: .topLeading) {
                        // Step 7: Display Image
                        Image("\(imageNames[index])")
                            .resizable()
                            .frame(height: imagesize)
                            .tag(index)
                    }
                    .background()
                    .shadow(radius: 20)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .ignoresSafeArea()
            
            HStack {
                ForEach(0..<imageNames.count, id: \.self) { index in
                    Capsule()
                        .fill(Color.white.opacity(selectedImageIndex == index ? 1 : 0.33))
                        .frame(width: 35, height: 8)
                        .onTapGesture {
                            selectedImageIndex = index
                        }
                }
                .offset(y: 200)
            }
        }
        .frame(height: size)
        .onReceive(timer) { _ in
            withAnimation(.default) {
                selectedImageIndex = (selectedImageIndex + 1) % imageNames.count
            }
        }
    }
}

struct AutoScroller_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            ZStack{
                AutoScroller(imageNames: ["item1", "venecia", "venecia2"], size: 450, imagesize: 570)
            }
            Spacer()
        }
        
        
    }
}
