//
//  48_ButtonStyle & ControlSize.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 09.11.23.
//

import SwiftUI

struct ButtonStyle___ControlSize: View {
    
    
    
    var body: some View {
        VStack {
            Button("Button Style Plain") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            
            
            
            Button("Button Style Bordered") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
            
            
            Button("Button Style Bordered Prominent") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            
            
            Button("Button Style Borderless") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
            
            
            Button("Control Size Regular") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
            .buttonStyle(.borderedProminent)
            
            Button("Control Size Large") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
            .buttonStyle(.borderedProminent)
            
            Button("Control Size Extra Large") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.extraLarge)
            .buttonStyle(.borderedProminent)
            
            Button("Control Size Small") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.small)
            .buttonStyle(.borderedProminent)
            
            Button("Control Size Mini") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.mini)
            .buttonStyle(.borderedProminent)
            
            
            Button(action: {}, label: {
                Text("Button with label")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            })
            .controlSize(.large)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 15))
        }
    }
    
    
}

#Preview {
    ButtonStyle___ControlSize()
}
