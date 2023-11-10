//
//  04_Gradients.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 04.11.23.
//

import SwiftUI

struct GradientsView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                // MARK: - obican color
//                Color.red
                
                // MARK: - linear gradient color
//                LinearGradient(
//                    gradient: Gradient(colors: [Color(uiColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(uiColor: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom)
                
                // MARK: - radial gradient color
//                RadialGradient(
//                    gradient: Gradient(colors: [Color(uiColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(uiColor: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))]),
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 400)
                
                // MARK: - angular gradient color
                AngularGradient(
                    colors: [Color(uiColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(uiColor: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))],
                    center: .topLeading,
                    angle: .degrees(180 + 45))
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsView()
}
