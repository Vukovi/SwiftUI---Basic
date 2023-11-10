//
//  29_TextEditor.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 07.11.23.
//

import SwiftUI

struct TextEditorView: View {
    
    @State private var text: String = "Starting text"
    @State private var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $text)
                    .frame(height: 250)
                    .foregroundStyle(.green)
//                    .background(.red) // nece da oboji pozadinu
                    .colorMultiply(.red) // hoce da oboji pozadinu, ali text vraca u crnu boju
                
                Button(action: {
                    savedText = text
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .foregroundStyle(.white )
                })
                
                Text(savedText)
                
                Spacer()
            }
            .padding()
            .background(.green)
            .navigationTitle("Text Editor")
        }
    }
}

#Preview {
    TextEditorView()
}
