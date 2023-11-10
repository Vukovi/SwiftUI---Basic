//
//  01_Text.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 01.11.23.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!")
        
            // MARK: - ovako se font prilagodjava velicini ekrana
//            .font(.body)
        
            // MARK: - ovi modifikatori postoje i u Attributes Inspectoru
//            .fontWeight(.heavy)
//            .bold()
//            .underline(true, color: .red)
//            .italic()
//            .strikethrough(true, color: .green)
            
            // MARK: - ovako font ostaje fiksiran na 24
//            .font(.system(size: 24, weight: .semibold, design: .rounded))
            
            // MARK: - razmak izmedju redova
            .baselineOffset(10.0)
            // MARK: - razmak izmedju slova
            .kerning(10)
            .foregroundColor(.red)
            .multilineTextAlignment(.leading)
            // MARK: - kada je kratak tekst, iako je on setovan u multilineTextAlignment da bude leading, tekst to nece biti sve dok se i u frame-u ne stavi da bude leading
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextBootcamp()
}
