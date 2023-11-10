//
//  40_OnTapGesture.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 08.11.23.
//

import SwiftUI

struct OnTapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(isSelected ? .green : .primary)
                .frame(height: 200)
            
//            Button(action: {
//                isSelected.toggle()
//            }, label: {
//                Text("Button")
//                    .font(.headline)
//                    .foregroundStyle(.white)
//                    .frame(height: 55)
//                    .frame(minWidth: .infinity)
//                    .background(Color.blue)
//                    .cornerRadius(25)
//            })
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            })
            
            Text("Tap Gesture")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
                // MARK: - Single click for tap gesture
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                // MARK: - Double click for tap gesture
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
            
            Spacer()
        }
        .padding(40)
        
    }
}

#Preview {
    OnTapGestureBootcamp()
}
