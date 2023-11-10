//
//  27_ContextMenu.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 07.11.23.
//

import SwiftUI

struct ContextMenu: View {
    
    @State var backgroundColor: Color = .cyan
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Vuk Knezevic")
                .font(.headline)
            Text("iOS Developer")
                .font(.subheadline)
        }
        .foregroundStyle(.white)
        .padding(20)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Button 1", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                Text("Button 2")
            })
            
            
            Button(action: {
                backgroundColor = .cyan
            }, label: {
                HStack {
                    Text("Button 2")
                    Image(systemName: "heart.fill")
                }
            })
        })
    }
}

#Preview {
    ContextMenu()
}
