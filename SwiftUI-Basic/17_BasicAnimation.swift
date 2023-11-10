//
//  17_BasicAnimation.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 06.11.23.
//

import SwiftUI

struct BasicAnimation: View {
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation {
                    isAnimating.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimating ? 50 : 25.0)
                .fill(isAnimating ? .red : .green)
                .frame(
                    width: isAnimating ? 100 : 300,
                    height: isAnimating ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimating ? 360 : 0))
                .offset(y: isAnimating ? 300 : 0)
            Spacer()
        }
    }
}

#Preview {
    BasicAnimation()
}
