//
//  31_Picker.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 07.11.23.
//

import SwiftUI

// MARK: - Picker je nekoliko stvari iz UIKit-a
// Picker - .pickerStyle(.wheel)
// Dropdown menu - .pickerStyle(.menu)
// Segmented control - .pickerStyle(.segmented)
// Segmented control - .pickerStyle(.palette)
// Picker - .pickerStyle(.inline)
// Dropdown menu - .pickerStyle(.automatic)
// Navigation Link - .pickerStyle(.navigationLink)


struct PickerBootcamp: View {
    
    // MARK: - Selektovani element se podesava prema .tag(..), tako da ovi state property-ji moraju odgovarati vrednostima unutar .tag(..)
    @State var selection: Int = 19
    
    @State var selection2: String = "4"
    
    @State var selection3: String = "Recent"
    let filrerOptions = ["Recent", "Popular", "Liked"]
    
    var body: some View {
        VStack(spacing: 30) {
            
            HStack {
                Text("Age:")
                Text("\(selection)")
            }
            
            // WHEEL
            Picker(selection: $selection) {
                ForEach(18..<100) { value in
                    Text("\(value)")
                        .font(.headline)
                        .foregroundStyle(.red)
                        .tag(value) // MORA DA TAG BUDE INT JER JE PROPERTY SELECTION ODABRAN DA BUDE INT
                }
            } label: {
                Text("Picker")
            }
            .pickerStyle(.wheel)
//                .background(Color.gray.opacity(0.3))
            
            // MENU
            Picker(
                selection: $selection2 ) {
                    // MORAJU TAGOVI DA BUDU TIPA STRING JER JE PROPERTY SELECTION2 ODABRAN DA BUDE STRING
                    Text("Filter 1").tag("1")
                    Text("Filter 2").tag("2")
                    Text("Filter 3").tag("3")
                    Text("Filter 4").tag("4")
                    Text("Filter 5").tag("5")
                } label: {
                    Text("Picker")
                }
                .pickerStyle(.menu)
            
             // SEGMENTED CONTROL
            Picker(
                selection: $selection3) {
                    // MORAJU TAGOVI DA BUDU TIPA STRING JER JE PROPERTY SELECTION3 ODABRAN DA BUDE STRING
                    ForEach(filrerOptions.indices) { index in
                        Text(filrerOptions[index])
                            .tag(filrerOptions[index])
                    }
                } label: {
                    Text("Picker")
                }
                .pickerStyle(.segmented)
        }
    }
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor : UIColor.white], for: .selected)
    }
}

#Preview {
    PickerBootcamp()
}
