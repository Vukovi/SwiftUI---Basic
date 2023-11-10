//
//  24_Lists.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 07.11.23.
//

import SwiftUI

struct ListsView: View {
    
    @State private var fruits: [String] = ["Apple", "Banana", "Peach", "Ornage"]
    
    @State private var veggies: [String] = ["Tomato", "Carrot", "Potato"]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header: Text("Fruits")) {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit)
                        }
                        .onDelete(perform: deleteRow)
                        .onMove(perform: moveRow)
                        .listRowBackground(Color.yellow)
                    }
                    .tint(.purple)
                
                
                Section(
                    header: Text("Veggies")) {
                        ForEach(veggies, id: \.self) { fruit in
                            Text(fruit)
                        }
                        .onDelete(perform: deleteRow)
                        .onMove(perform: moveRow)
                    }
                    
            }
            .listStyle(.automatic)
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton)
        }
        .tint(.red)
    }
    
    var addButton: some View {
        Button("Add", action: {
            fruits.append("Coconut")
        })
    }
    
    func deleteRow(_ indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func moveRow(_ indexSet: IndexSet, to row: Int) {
        fruits.move(fromOffsets: indexSet, toOffset: row)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListsView()
}
