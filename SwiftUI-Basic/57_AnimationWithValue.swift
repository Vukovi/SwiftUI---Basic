//
//  57_AnimationWithValue.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 10.11.23.
//

import SwiftUI

struct AnimationWithValue: View {
    
    @State private var animate1: Bool = false
    @State private var animate2: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 40) {
                Button("Button 1") {
                    animate1.toggle()
                }
                
                Button("Button 2") {
                    animate2.toggle()
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                        .background(Color.green)
                        .frame(maxHeight: .infinity, alignment: animate2 ? .top : .bottom)
                        .background(Color.orange)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
            }
            // MARK: - Staro
//            .animation(.spring())
            // MARK: - Novo
            .animation(.spring(), value: animate1)
            .animation(.linear(duration: 5), value: animate2)
        }
    }
}

#Preview {
    AnimationWithValue()
}
