//
//  02_BasicShapes.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 01.11.23.
//

import SwiftUI

struct BasicShapesBootcamp: View {
    var body: some View {
        
//        Circle()
//        Ellipse()
//        Capsule(style: .continuous)
//        Rectangle()
        RoundedRectangle(cornerRadius: 25.0, style: .circular )
        
//            .fill(.green)
//            .foregroundColor(.red)
//            .stroke()
//            .stroke(.red)
//            .stroke(.blue, lineWidth: 30)
//            .stroke(.orange, style: StrokeStyle.init(lineWidth: 20, lineCap: CGLineCap.round, dash: [20], dashPhase: 5))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(lineWidth: 15)
             .frame(width: 200, height: 100)
    }
}

#Preview {
    BasicShapesBootcamp()
}
