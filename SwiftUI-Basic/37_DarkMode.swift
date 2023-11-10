//
//  37_DarkMode.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 08.11.23.
//

import SwiftUI

struct DarkMode: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 10) {
                    Text("This text is primary")
                        .foregroundStyle(.primary)
                    
                    Text("This text is secondary")
                        .foregroundStyle(.secondary)
                    
                    Text("This text is black")
                        .foregroundStyle(.black)
                    
                    Text("This text is white")
                        .foregroundStyle(.white)
                    
                    Text("This text is red")
                        .foregroundStyle(.red)
                    
                    Text("This text is globally addaptive")
                        .foregroundStyle(Color("addaptiveColor"))
                    
                    Text("This text is locally addaptive")
                        .foregroundStyle(colorScheme == .dark ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode")
        }
        
    }
}

#Preview {
    DarkMode()
}
