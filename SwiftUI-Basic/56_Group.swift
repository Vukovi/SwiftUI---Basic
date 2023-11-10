//
//  56_Group.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 10.11.23.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, World!")
            // MARK: - Da ne bih trosio resurse i iscrtavanje koje bi mi bilo potrebno da ovo grupisem u jos jedan VStack, a potrebno mi je da jednom broju elemeneta dodelim iste modifikatore, onda njih ubacim u Group i dodelim modifikatore grupi kao sto bih ih dodelio VStacku.
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .foregroundStyle(.green)
            .font(.caption)
        }
        .foregroundStyle(.red)
        .font(.headline)
    }
}

#Preview {
    GroupBootcamp()
}
