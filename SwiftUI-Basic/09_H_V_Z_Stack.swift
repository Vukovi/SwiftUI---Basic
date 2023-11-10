//
//  09_H_V_Z_Stack.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 05.11.23.
//

import SwiftUI

struct H_V_Z_Stack: View {
    var body: some View {
//        ZStack(alignment: .trailing, content: {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 150, height: 150)
//            
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 125, height: 125)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 100, height: 100 )
//        })
        
        ZStack(alignment: .top) {
            Rectangle()
                .fill(.yellow)
                .frame(width: 350, height: 500)
            
            VStack(alignment: .leading, spacing: 30) {
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom) {
                    Rectangle()
                        .fill(.purple)
                    .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(.blue)
                    .frame(width: 75, height: 75)
                    
                    Rectangle()
                        .fill(.teal)
                    .frame(width: 25, height: 25)
                }
                .background(.white)
            }
            .background(.black)
        }
        
    }
}

#Preview {
    H_V_Z_Stack()
}
