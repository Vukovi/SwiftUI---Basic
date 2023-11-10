//
//  03_Colors.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 02.11.23.
//

import SwiftUI

struct ColorsBootcamp: View {
    
    private func oceanColor() -> UIColor {
        // #colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1)
        return #colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1)
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.red
                Color(oceanColor())
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: .red, radius: 10, x: -20, y: 20)
    }
}

#Preview {
    ColorsBootcamp()
}
