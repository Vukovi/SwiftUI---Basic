//
//  12_ScrollView.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 06.11.23.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            // MARK: - VStack se kreira odmah i u ovoj situaciji, ako npr postoji download slika prikazivanje na ekranu bi bilo otezano, to resavamo LazyVStack-om koji je isto sto i Vstack ali iscrtava sadrzaj na ekranu onog momenta kad je sadrzaj potreban.
            // MARK: - LazyVStack je najbolje koristiti kad ima veliki broj elemenata za iscrtavnje
            LazyVStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                    
                }
                
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
