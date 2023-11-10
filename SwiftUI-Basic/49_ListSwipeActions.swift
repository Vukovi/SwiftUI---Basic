//
//  49_ListSwipeActions.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 09.11.23.
//

import SwiftUI

struct ListSwipeActions: View {
    
    @State private var fruits: [String] = ["Apple", "Banana", "Peach", "Ornage"]
    
    @State private var veggies: [String] = ["Tomato", "Carrot", "Potato"]
    
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(
                        edge: .trailing,
                        allowsFullSwipe: false) {
                            Button(action: {
                                
                            }, label: {
                                Text("Archive")
                            })
                            .tint(.blue)
                            
                            Button(action: {
                                
                            }, label: {
                                Text("Save")
                            })
                            .tint(.green)
                            
                            Button(action: {
                                
                            }, label: {
                                Text("Junk")
                            })
                            .tint(.yellow)
                        }
                        .swipeActions(
                            edge: .leading,
                            allowsFullSwipe: true) {
                                Button(action: {
                                    
                                }, label: {
                                    Text("Share")
                                })
                                .tint(.purple)
                                
                            }
            }
            .onDelete(perform: deleteRow)
        }
    }
    
    func deleteRow(_ indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
}

#Preview {
    ListSwipeActions()
}
