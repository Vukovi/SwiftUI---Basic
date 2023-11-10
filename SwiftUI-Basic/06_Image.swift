//
//  06_Image.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 04.11.23.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("test1")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 200)
            .clipShape(
                Circle()
            )
        
    }
}

#Preview {
    ImageBootcamp()
}
