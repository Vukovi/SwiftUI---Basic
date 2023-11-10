//
//  52_OnSubmit & SubmitLabel.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 09.11.23.
//

import SwiftUI

// MARK: - submitLabel i onSubmit su modifikatori keyboarda, return button moze da umesto RETURN bude GO, a klik na njega sad ima i aktivnost

struct OnSubmit___SubmitLabel: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        TextField("Add your name here...", text: $textFieldText)
            .padding(.leading)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.gray.brightness(0.3))
            .cornerRadius(10)
            .submitLabel(.go)
            .onSubmit {
                print("VUK KNEZEVIC")
            }
    }
}

#Preview {
    OnSubmit___SubmitLabel()
}
