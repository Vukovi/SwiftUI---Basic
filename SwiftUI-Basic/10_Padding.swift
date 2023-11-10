//
//  10_Padding.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 06.11.23.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        Text("Hello, World! This is fun!!")
            .background(.yellow)
//            .padding()
            .padding(.all, 10) // isto sto i samo .padding()
            .padding(.leading, 20)
            .background(.blue)
        
    }
}

#Preview {
    PaddingBootcamp()
}
