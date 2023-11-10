//
//  05_SystemIcons.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 04.11.23.
//

import SwiftUI

struct SystemIconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .renderingMode(.original)
            .resizable()
            .font(.system(size: 200))
            .foregroundColor(.red)
//            .aspectRatio(contentMode: .fill)
            .scaledToFill() // isto sto i iznad
            .frame(width: 300, height: 300)
//            .clipped() // odseci po frameu
    }
}

#Preview {
    SystemIconsBootcamp()
}
