//
//  30_Toggle.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 07.11.23.
//

import SwiftUI

struct ToggleView: View {
    
    @State private var toggleIsOn: Bool = false
    @State private var toggle2IsOn: Bool = true
    
    var body: some View {
        VStack(spacing: 30) {
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(
                isOn: $toggleIsOn,
                label: {
                Text("Change status")
            })
            .toggleStyle(.switch)
            .tint(.red)
                        
            HStack {
                Text("Status 2:")
                Text(toggle2IsOn ? "Online" : "Offline")
            }
            .font(.title2)
            
            Toggle(
                isOn: $toggle2IsOn,
                label: {
                Text("Change status")
            })
            .toggleStyle(.button)
            .tint(.red)
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleView()
}
