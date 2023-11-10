//
//  28_TextField.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 07.11.23.
//

import SwiftUI

struct TextFieldView: View {
    
    @State private var text: String = ""
    @State private var data: [String] = []
     
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $text)
        //            .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundStyle(.red)
                .font(.headline)
                
                Button(action: {
                    if textIsAppropriete() {
                        saveText()
                    }
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriete() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundStyle(.white )
                })
                .disabled(!textIsAppropriete())
                
                ForEach(data, id: \.self) { value in
                    Text(value)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Text Field")
        }
        
    }
    
    func saveText() {
        data.append(text)
        text = ""
    }
    
    func textIsAppropriete() -> Bool {
        if text.count >= 3 {
            return true
        }
        return false
    }
}

#Preview {
    TextFieldView()
}
