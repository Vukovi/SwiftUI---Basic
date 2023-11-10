//
//  43_AppStorage.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 08.11.23.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ??  "Hello, World!")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("save") {
                let name = "Vuk"
                currentUserName = name
            }
        }
    }
}

#Preview {
    AppStorageBootcamp()
}
