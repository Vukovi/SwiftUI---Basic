//
//  45_AsyncImage.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 09.11.23.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/200 ")
    
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            @unknown default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
    }
    
    
    
}

#Preview {
    AsyncImageBootcamp()
}
