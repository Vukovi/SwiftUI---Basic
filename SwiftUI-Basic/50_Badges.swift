//
//  50_Badges.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 09.11.23.
//

import SwiftUI

// MARK: - Badge, iako je dostupan svuda kao npr na Text-u, ima efekta jedino na List i na TabView

struct Badges: View {
    var body: some View {
        List {
            Text("hello")
                .badge(2)
            Text("hello")
                .badge("something new")
            
        }
        
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge(2)
            
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge(0)
            
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge("New")
                
        }
    }
}

#Preview {
    Badges()
}
