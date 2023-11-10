//
//  08_Background & Overlay.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 04.11.23.
//

import SwiftUI

struct Background___Overlay: View {
    var body: some View {
        
        
//        Text("Hello, World!")
//            .background(
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100, alignment: .center)
//            )
//            .background(
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 120, height: 120, alignment: .center)
//            )
        
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 50, height: 50)
//                , alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 150, height: 150)
//                , alignment: .bottomTrailing
//            )
        
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.red, Color.blue]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .blue, radius: 10, x: 0, y: 10)
                // ide overlay na Circle koji je view background-a
                    .overlay(
                        Circle()
                            .fill(.cyan)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                                
                            )
                            .shadow(color: .blue, radius: 10, x: 10, y: 10)
                        , alignment: .bottomTrailing
                    )
            )
    }
}

#Preview {
    Background___Overlay()
}
