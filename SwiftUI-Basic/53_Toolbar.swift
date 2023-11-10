//
//  53_Toolbar.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 09.11.23.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var textFieldText: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                Color.white.ignoresSafeArea()
                
                ScrollView {
                    TextField("Placeholder...", text: $textFieldText)
                    
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(.blue)
                            .frame(width: 200, height: 200)
                    }
                    
                    Text("Hello 👋")
                        .foregroundStyle(.indigo)
                }
                
                
            }
            .navigationTitle("Toolbar")
            // MARK: - Umesto navigationBarItems koristicemo Toolbar
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear")
//            )
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gear")
                }
                ToolbarItem(placement: .principal) {
                    Image(systemName: "house.fill")
                }
                
                ToolbarItem(placement: .keyboard) {
                    Image(systemName: "globe")
                }
            }
            
            // MARK: - Skrivanje navigation bar-a po starom i po novom
//            .navigationBarHidden(true)
//            .toolbar(.hidden, for: .navigationBar)
            // MARK: - Proziram Navigation bar background
//            .toolbarBackground(.hidden, for: .navigationBar)
            // MARK: - Navigation bar koji je uvek u dark modu npr
//            .toolbarColorScheme(.dark, for: .navigationBar)
            // MARK: - Padajuci meni koji je vezan za navigation title
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Go to screen 1") {
                    paths.append("SCREEN 1")
                }
                
                Button("Go to screen 2") {
                    paths.append("SCREEN 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text(value)
                    .font(.largeTitle)
                    .foregroundStyle(.indigo)
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
