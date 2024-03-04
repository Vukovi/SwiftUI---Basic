//
//  62_NavigationSplitView.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 25.02.24.
//

import SwiftUI

// MARK: - NavigationSplitView se koristi kod iPadOS, MacOS, VisionOS, a za iOS ukoliko ima potrebe postoje nacini kako da se iskoristi

struct NavigationSplitViewBootcamp: View {
    
    // ovo mora biti State jer se kliktanjem po ekranu i toolbar button-u menja
    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFruit: Fruits? = nil
    
    var body: some View {
        
        // MARK: - dvostruki split view
//        NavigationSplitView {
//            // na ios se bez modifikacija vidi samo sidebar
//            Color.red
//        } detail: {
//            Color.green
//        }
        
        // MARK: - trostruki split view
//        NavigationSplitView {
//            Color.red
//        } content: {
//            Color.blue
//        } detail: {
//            Color.green
//        }
        
        // MARK: - dvostruki split view sa visibility-jem
//        NavigationSplitView(columnVisibility: $visibility) {
//            Color.red
//        } detail: {
//            Color.green
//        }

        // MARK: - trostruki split view sa visibility-jem
        NavigationSplitView(columnVisibility: $visibility) {
//            List {
//                ForEach(FoodCategory.allCases, id: \.rawValue) { category in
//                    Button {
//                        selectedCategory = category
//                    } label: {
//                        Text(category.rawValue.capitalized)
//                            .font(.title)
//                    }
//                }
//            }
//            .navigationTitle("Categories")
            
            // MARK: - varijanta za iOS
            List(FoodCategory.allCases,
                 id: \.rawValue,
                 selection: $selectedCategory) { category in
                // umesto Buttona ide NavigationLink jer tako ostane markirano ono sto je selektovano
                NavigationLink(category.rawValue.capitalized, value: category)
            }
            .navigationTitle("Categories")
        } content: {
            if let selectedCategory = selectedCategory {
                Group {
                    switch selectedCategory {
                    case .fruit:
//                        List {
//                            ForEach(Fruits.allCases, id: \.rawValue) { friut in
//                                Button {
//                                    selectedFruit = friut
//                                } label: {
//                                    Text(friut.rawValue.capitalized)
//                                        .font(.title2)
//                                }
//                            }
//                        }
                        
                        // MARK: - varijanta za iOS
                        List(Fruits.allCases,
                             id: \.rawValue,
                             selection: $selectedFruit) { fruit in
                            // umesto Buttona ide NavigationLink jer tako ostane markirano ono sto je selektovano
                            NavigationLink(fruit.rawValue.capitalized, value: fruit)
                        }
                    case .vegetables:
                        EmptyView()
                    case .meat:
                        EmptyView()
                    }
                }
                .navigationTitle("Friuts")
            }
        } detail: {
            if let selectedFruit = selectedFruit {
                Text("You've selected: \(selectedFruit.rawValue)")
                    .font(.largeTitle)
                    .navigationTitle(selectedFruit.rawValue.capitalized)
            }
        }
        .navigationSplitViewStyle(.balanced) // koliko ce zeleni view zauzeti od ekrana


    }
}

enum FoodCategory: String, CaseIterable {
    case fruit, vegetables, meat
}
enum Fruits: String, CaseIterable {
    case apple, banana, orange
}

#Preview {
    NavigationSplitViewBootcamp()
}
