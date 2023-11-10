//
//  AnyLayout.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 10.11.23.
//

import SwiftUI

// https://useyourloaf.com/blog/size-classes
// MARK: - Portrait visina je regular, ali kod nekih vecih uredjaja u landscape-u moze postati compact

struct AnyLayoutBootcamp: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")
            
            if horizontalSizeClass == .compact {
                VStack {
                    Text("Alpha")
                    Text("Beta")
                    Text("Gamma")
                }
            } else {
                HStack {
                    Text("Alpha")
                    Text("Beta")
                    Text("Gamma")
                }
            }
            
            // MARK: - Umesto ovog if/else mozemo da ostvarimo isto pomocu manje koda i koriscenja AnyLayouta
            
            // MARK: - Any je inace TYPE ERASER i u osnovi znaci da nesto sto ima prefiks Any moze da bude bilo sta od svojih tipova
            
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
            
        }
    }
}

#Preview {
    AnyLayoutBootcamp()
}
