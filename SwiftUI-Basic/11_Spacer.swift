//
//  11_Spacer.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 06.11.23.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack(spacing: 0) {
            // MARK: - Spacer(minLength: nil) === Spacer()
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .fill(.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .fill(.green)
                .frame(width: 50, height: 50)
            
            Spacer(minLength: 3)
                .frame(height: 10)
                .background(.orange)
        }
        .background(.yellow)
        .padding(.horizontal, 150)
        .background(.blue)
    }
}

#Preview {
    SpacerBootcamp()
}
