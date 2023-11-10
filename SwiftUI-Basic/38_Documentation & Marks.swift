//
//  38_Documentation & Marks.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 08.11.23.
//

import SwiftUI

// MARK: - Kad hocu da foldujem deo koda -> FOLD = OPTION + COMAND + LEFT ARROW
// MARK: - Option click na property ili f-ju da bi se videla napisana dokumentacija
// MARK: - Za propertyje se dokumentacija dodaje sa 3 slash-a ///
// MARK: - Za funkcije se dokumentacija dodaje desni klik -> addDocumenation

struct Documentation___Marks: View {
    
    // MARK: - Properties
    @State var data: [String] = ["Apple", "Banana", "Orange"]
    @State var showAlert: Bool = false
    
    
    // MARK: - Body
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                // Background
                Color.green.ignoresSafeArea()
                
                // Foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing: navigationRightItem )
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "This is alert")
                })
            }
        } // END: NAV
    }
    
    /// Dokumentacija - foregroundLayer: Sluzi da se postigne bolje citljivost koda
    private var foregroundLayer: some View {
        VStack {
            Text("Hello")
            ForEach(data, id: \.self) { value in
                Text(value)
                    .font(.headline)
            }
        }
    }
    
    private var navigationRightItem: some View {
        Button(action: {
            showAlert.toggle()
        }, label: {
            Text("Alert")
        })
    }
    
    // MARK: - Functions
    
    
    
    /// Obezbedjuje alert za uneti tekst
    ///
    /// Ova funkcija kreira i odmah vraca Alert. Alert ce imati title koji dobija od parametra text, ali nece imati message.
    ///
    ///```
    /// getAlert(text: "Pozdrav") -> Alert(title: Text("Pozdrav"))
    ///```
    /// - Warning: Nema nista na sta bi trebalo obratiti paznju
    /// - Parameter text: Ovo je title za Alert
    /// - Returns: Vraca prosti Alert sa title-om
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
    
}

// MARK: - Preview
#Preview {
    Documentation___Marks()
}
