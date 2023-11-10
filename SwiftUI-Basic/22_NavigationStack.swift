//
//  22_NavigationStack.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 07.11.23.
//

import SwiftUI

// MARK: - NavigationStack za razliku od NavigationView lazy load-uje sve svoje view-eve
// MARK: - NavigationStack ima mogucnost da se push-uje nekoliko ekrana u napred, npr push-ujem na treci ekran
// MARK: - NavigationStack ima mogucnost da doda nekoliko destinacija razlicitih type-different destinacija na koje se moze push-ovati

struct NavigationStackView: View {
    
    enum PathObjects: Hashable {
        case string(String)
        case integer(Int)
        
        var title: String {
            switch self {
            case .integer(let int):
                return "\(int)"
            case .string(let str):
                return str
            }
        }
    }
    
    let fruits: [String] = ["Apple", "Orange", "Banana"]
    
    // MARK: - Ako ubacim nesto u ovaj niz, umesto da bude prazan, cim se ovaj NavigationStack loaduje on ce se prikazati od poslednjeg elementa u ovom nizu, tacnije pocinje od poslednjeg pushovanog ekrana
    @State private var stackPathToPush: [PathObjects] = []
    
    var body: some View {
        NavigationStack(path: $stackPathToPush) {
            ScrollView(showsIndicators: false) {
                
                VStack(spacing: 40) {
                    
                    Button {
                        let screens: [PathObjects] = [
                            PathObjects.string("Vuk"),
                            PathObjects.string("Knezevic"),
                            PathObjects.string("iOS Developer"),
                            PathObjects.integer(100)
                        ]
                        stackPathToPush.append(contentsOf: screens)
                    } label: {
                        Text("This will push the last screen from defined stack!")
                    }
                    
                    Button {
                        let screens: [PathObjects] = [
                            PathObjects.string("Vuk"),
                            PathObjects.string("Knezevic"),
                            PathObjects.string("iOS Developer"),
                            PathObjects.integer(100)
                        ]
                        stackPathToPush.append(contentsOf: screens)
                    } label: {
                        Text("Multi stack one more time!")
                    }

                    
                    ForEach(fruits, id: \.self) { value in
                        
                        let pathObject: PathObjects = PathObjects.string(value)
                        
                        NavigationLink(value: pathObject) {
                            Text("Click: \(value)")
                        }
                    }
                    
                    ForEach(0..<10) { int in
                        
                        let pathObject: PathObjects = PathObjects.integer(int)
                        
                        // MARK: - Od iOS 16
                        NavigationLink(value: pathObject) {
                            Text("Click: \(int)")
                        }
                        
                        // MARK: - Pre iOS 16
//                        NavigationLink(
//                            destination: MySecondScreen(value: int),
//                            label: {
//                                Text("Click: \(int)")
//                            })
                        
                    }
                }
            }
            .navigationTitle("Navigation Stack")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            // MARK: - moze se dodati nekoliko tipova destinacija na koje se segue-uje
            .navigationDestination(for: String.self) { value in
                Text("Another screen: \(value)")
            }
            // MARK: - Sa PathObjects sam onesposobio prva dva .navigationDestination-a jer sam u NavigationLink prosledio value koji ne odgovara tipovima objekata definisanim u ta prva dva .navigationDestination-a
            .navigationDestination(for: PathObjects.self) { value in
                Text("All together screen: \(value.title)")
            }
        }
    }
}

struct MySecondScreen: View {
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT SCREEN: \(value)")
    }
    
    var body: some View {
        Text("Screen: \(value)")
    }
}

#Preview {
    NavigationStackView()
}
