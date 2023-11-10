//
//  33_DatePicker.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 07.11.23.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var date: Date = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents.init(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        ZStack {
            
            Color.white.ignoresSafeArea()
            
            VStack(spacing: 40) {
                
                Text("Date is:")
                Text(dateFormatter.string(from: date))
                
                DatePicker("Select a date!", selection: $date, displayedComponents:  [.date, .hourAndMinute])
                    .accentColor(.red)
                    .frame(height: 450)
                    .datePickerStyle(
                        .compact        // Default
                        // .wheel         // UIKit varijanta
                        // .graphical     // Kalendar
                    )
                
                
                DatePicker("Select limited date!", selection: $date, in: startingDate...endingDate, displayedComponents: [.date])
            }
        }
    }
}

#Preview {
    DatePickerBootcamp()
}
