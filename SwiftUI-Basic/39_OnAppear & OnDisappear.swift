//
//  39_OnAppear & OnDisappear.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 08.11.23.
//

import SwiftUI

// MARK: - Zavisi gde se postavi .onAppear i vazi za pojavaljivanje samo tog view-a
// MARK: - RoundedRectangle ima takodje .onAppear i to bi bilo zgodno mesto ako imamo neki download slika da se okine, jer se nece okinuti sve dok se na ekranu ne pojavi novi RoundedRectangle. DA BI OVO FUNKCIONISALO NEOPHODAN JE LAZY LOADING, koji se ovde postize pomocu LazyVStack-a.

struct OnAppear___OnDisappear: View {
    
    @State private var myText: String = "Starting text."
    @State private var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false, content: {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            })
            .navigationTitle("On Appear:   \(count)")
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "New text."
                }
            }
            .onDisappear {
                myText = "Ending text."
            }
        }
    }
}

#Preview {
    OnAppear___OnDisappear()
}
