//
//  32_ColorPicker.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 07.11.23.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor = Color.green
    
    var body: some View {
        ZStack {
            
            backgroundColor.ignoresSafeArea()
            
            VStack {
                ColorPicker("Select a color", selection: $backgroundColor, supportsOpacity: true)
            }
            .padding(.horizontal)
            
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
