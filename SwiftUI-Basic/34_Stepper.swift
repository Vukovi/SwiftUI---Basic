//
//  34_Stepper.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 07.11.23.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State private var stepperValue: Int = 10
    @State private var widthIncrement: CGFloat = 0
    
    var body: some View {
        
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper 2") {
                // on increment
                incrementWidth(10)
            } onDecrement: {
                // on decrement
                incrementWidth(-10)
            }
            .padding(50)

        }
        
    }
    
    
    func incrementWidth(_ amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
    
}

#Preview {
    StepperBootcamp()
}
