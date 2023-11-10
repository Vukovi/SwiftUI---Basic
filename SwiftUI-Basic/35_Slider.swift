//
//  35_Slider.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 08.11.23.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State private var sliderValue: Double = 3
    @State private var color: Color = .red
    
    var body: some View {
        
        VStack {
            
            Text("Rating:")
            Text(
//                "\(sliderValue)"
                String(format: "%.1f", sliderValue)
            )
            .foregroundStyle(color)
            
            // Slider(value: $sliderValue)
            // Slider(value: $sliderValue, in: 1...5)
            // Slider(value: $sliderValue, in: 1...5, step: 1.0)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 0.5,
                onEditingChanged: {_ in 
                    color = .green
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("Title")
                })
                .accentColor(.red)
        }
        
    }
}

#Preview {
    SliderBootcamp()
}
