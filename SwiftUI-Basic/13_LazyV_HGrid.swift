//
//  13_LazyV_HGrid.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 06.11.23.
//

import SwiftUI

struct LazyV_HGrid: View {
    
    let columns: [GridItem] = [
//        GridItem.init(.fixed(50), spacing: nil, alignment: nil),
//        GridItem.init(.fixed(75), spacing: nil, alignment: nil),
//        GridItem.init(.fixed(100), spacing: nil, alignment: nil),
//        GridItem.init(.fixed(75), spacing: nil, alignment: nil),
//        GridItem.init(.fixed(50), spacing: nil, alignment: nil)
        
//        GridItem.init(.flexible(), spacing: nil, alignment: nil),
//        GridItem.init(.flexible(), spacing: nil, alignment: nil),
//        GridItem.init(.flexible(), spacing: nil, alignment: nil),
//        GridItem.init(.flexible(), spacing: nil, alignment: nil),
//        GridItem.init(.flexible(), spacing: nil, alignment: nil)
        
//        GridItem.init(.adaptive(minimum: 10, maximum: 300), spacing: nil, alignment: nil),
//        GridItem.init(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil),
        
        GridItem.init(.flexible(), spacing: 12, alignment: nil),
        GridItem.init(.flexible(), spacing: 12, alignment: nil),
        GridItem.init(.flexible(), spacing: 12, alignment: nil)
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            
            Rectangle()
                .fill(.red)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 12,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section {
                        ForEach(0..<50) { index in
                            Rectangle()
                                .frame(height: 50)
                        }
                    } header: {
                        Text("Section 1")
                            .foregroundStyle(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(.blue)
                            .padding(.horizontal)
                    }
                    
                    
                    Section {
                        ForEach(0..<50) { index in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 50)
                        }
                    } header: {
                        Text("Section 2")
                            .foregroundStyle(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(.orange)
                            .padding(.horizontal)
                    }
                })
        }
    }
}

#Preview {
    LazyV_HGrid()
}
