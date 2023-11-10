//
//  55_SafeAreaInsetsViews.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 10.11.23.
//

import SwiftUI

// MARK: - NPR, Moze da se koristi za neki floating button

struct SafeAreaInsetsViews: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
            // MARK: - Do nisu promenili u iOS16 da moze da se dodaje view u safe area insets, radili smo ga ovako
//            .overlay(alignment: .bottom) {
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
//            }
            // MARK: - Po novom imamo metodu u koju dodajemo isto ovo
            .safeAreaInset(edge: .bottom, alignment: .center, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow)
            }
        }
    }
}

#Preview {
    SafeAreaInsetsViews()
}
