//
//  23_LazyView.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 07.11.23.
//

import SwiftUI

struct LazyView<T: View>: View {
    var lazyView: () -> T
    var body: some View {
        self.lazyView()
    }
}

// MARK: - Isto sto i iznad LazyView
struct LazyLoadingView<Content: View>: View {
    private let build: () -> Content
    public init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }
    public var body: Content {
        build()
    }
}


struct LazyViewHolder: View {
    var body: some View {
        LazyView {
            Text("This will not be initialized on screen loading")
        }
    }
}

#Preview {
    LazyViewHolder()
}
