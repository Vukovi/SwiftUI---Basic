//
//  14_SafeArea.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 06.11.23.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ZStack {
            
            // Background
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            // Foreground
            ZStack(alignment: .leading) {
                Text("Hello world")
                    .font(.title)
                    .alignmentGuide(.leading) { dimension in
                        dimension[.trailing]
                    }
//                    .alignmentGuide(.top, computeValue: { dimension in
//                        dimension[.bottom]
//                    })
                
                Text("Vuk")
                    .font(.title)
//                    .alignmentGuide(.leading) { dimension in
//                        dimension[.leading]
//                    }
//                    .alignmentGuide(.top, computeValue: { dimension in
//                        dimension[.bottom]
//                    })
            }
            .background(.green)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Color.red
                    .ignoresSafeArea()
            )
            
            
        }
    }
}

#Preview {
    SafeAreaBootcamp()
}
