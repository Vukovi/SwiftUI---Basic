//
//  19_Transitions.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 06.11.23.
//

import SwiftUI

struct TransitionsBootcamp: View {
    
    // MARK: - Pomocu transition-a moze da se uradi Bottom sheet 
    
    @State private var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                // MARK: - Animacija - pojavaljuje se levo, nestaje dole
//                    .transition(.asymmetric(
//                        insertion: .move(edge: .leading),
//                        removal: .move(edge: .bottom)))
                    .transition(.move(edge: .bottom))
                    .animation(.spring())
                // MARK: - Trik za opacity animaciju, bez dve linije iznad
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
                // MARK: - Trik za scale animaciju, isto bez linije 30 i 31
//                    .transition(AnyTransition.scale.animation(.easeInOut))
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionsBootcamp()
}
