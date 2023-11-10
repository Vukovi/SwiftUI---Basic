//
//  15_ExtractView.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 06.11.23.
//

import SwiftUI

struct ExtractView: View {
    var body: some View {
        ZStack {
            
            Color(uiColor: #colorLiteral(red: 0.34, green: 0.43, blue: 0.72, alpha: 1))
                .ignoresSafeArea()
            
            VStack {
                
                // MARK: - Klasicno, jednostavno dodavanje view-a
                VStack(spacing: 15) {
                    Text("1")
                    Text("Orangles")
                }
                .foregroundColor(.white)
                .padding()
                .background(.orange)
                .cornerRadius(10)
                
                // MARK: - Dodavanje view-a pomocu drugog View property-ja
                extractedView
                
                // MARK: - Dodavanje view-a pomocu drugog ekstractovanog View, desni klik Extract View
                CustomExtractedView()
            }

        }
    }
    
    
    var extractedView: some View {
        VStack(spacing: 15) {
            Text("2")
            Text("Apples")
        }
        .foregroundColor(.white)
        .padding()
        .background(.pink)
        .cornerRadius(10)
    }
}

#Preview {
    ExtractView()
}

struct CustomExtractedView: View {
    var body: some View {
        VStack(spacing: 15) {
            Text("3")
            Text("Bananas")
        }
        .foregroundColor(.white)
        .padding()
        .background(.green)
        .cornerRadius(10)
    }
}
