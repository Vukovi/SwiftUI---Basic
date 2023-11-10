//
//  54_ResizeableSheet.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 10.11.23.
//

import SwiftUI

struct ResizeableSheet: View {
    
    @State private var showSheet: Bool = false
    
    @State var detent: PresentationDetent = .large
    
    var body: some View {
        Button {
            showSheet.toggle()
        } label: {
            Text("Toggle sheet")
        }
        .sheet(isPresented: $showSheet) {
            ResizeableSheetView(detent: $detent)
            // MARK: - Detents su u stvari velicina sheeta koji zelis da dobijes
            // MARK: - Ovde dopustam da ide do sredine ekrana (.medium) i do skoro pune visine ekrana (.large) i nista izmedju
//                .presentationDetents([.medium, .large])
            // MARK: - Ovim fraction kao da setujem procenat visine sheet-a
//                .presentationDetents([.fraction(0.2)])
            // MARK: - Moze da se podesi i stepenicasti swipe
//                .presentationDetents([.fraction(0.1), .medium, .large])
            // MARK: - Moze da se postavi i tacna visina sheet-a
                .presentationDetents([.height(250)])
            // MARK: - Moze da se visinom upravlja iz koda, ali SAMO ZA SETOVANE DETENT-e
                .presentationDetents([.medium, .large],
                                     selection: $detent)
            // MARK: - Sakrivam horizontalnu liniju koja se pojavljuje u top delu sheet-a
                .presentationDragIndicator(.hidden)
            // MARK: - Onemugucavam da korisnik zatvori sheet swipe-om na dole
                .interactiveDismissDisabled()
        }
    }
}

struct ResizeableSheetView: View {
    
    @Binding var detent: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Hello 🪂")
                
                Button("MEDIUM") {
                    detent = .medium
                }
                
                Button("LARGE") {
                    detent = .large
                }
            }
        }
    }
}

#Preview {
    ResizeableSheet()
}
