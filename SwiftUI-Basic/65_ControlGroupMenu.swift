//
//  65_ControlGroupMenu.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 03.03.24.
//

import SwiftUI

struct ControlGroupMenu: View {
    var body: some View {
        Menu("Menu") {
            ControlGroup("Sa naslovom") {
                Button("A") {
                    
                }
                Button("B") {
                    
                }
                Menu("Nested Submeni") {
                    Button("Da") {
                        
                    }
                    Button("Ne") {
                        
                    }
                }
            }
            ControlGroup {
                Button("1") {
                    
                }
                Button("2") {
                    
                }
                Button("3") {
                    
                }
            }
            Button("Cetiri") {
                
            }
            Menu("Submeni") {
                Button("OK") {
                    
                }
                Button("Cancel") {
                    
                }
            }
        }
    }
}

#Preview {
    ControlGroupMenu()
}
