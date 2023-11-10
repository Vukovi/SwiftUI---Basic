//
//  07_Frame.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 04.11.23.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(.red)
        
            .frame(height: 100, alignment: .top)
            .background(.green)
        
            .frame(width: 150)
            .background(.orange)
        
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.blue)
        
            .frame(height: 400)
            .background(.pink)
        
            .frame(maxHeight: .infinity, alignment: .top)
            .background(.yellow)
        
    }
}

#Preview {
    FrameBootcamp()
}
