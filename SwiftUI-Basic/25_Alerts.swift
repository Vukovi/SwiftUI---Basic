//
//  25_Alerts.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 07.11.23.
//

import SwiftUI

struct Alerts: View {
    
    @State private var showAlert: Bool = false
    @State private var backgroundColor: Color = .yellow
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            Button("Click here") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert, content: {
                
                // 1.
                // Alert(title: Text("There was an error!"))
                
                // 2.
                getAlert()
            })
        }
        
    }
    
    func getAlert() -> Alert {
        Alert(
            title: Text("There was an error!"),
            message: Text("Something happened!"),
            primaryButton: Alert.Button.destructive(Text("DELETE"), action: {
                backgroundColor = .green
            }),
            secondaryButton: Alert.Button.cancel())
    }
}

#Preview {
    Alerts()
}
