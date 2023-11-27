//
//  61_ViewThatFits.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knežević on 27.11.23..
//

import SwiftUI


// MARK: - Da ne bi moralo da se manipulise sa view-ovima zbog razlicitih velicina ekrana razlicitih Apple uredjaja, viewThatFits prilagodjava varijante View-a prema velicini ekrana

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            ViewThatFits(in: .horizontal) {
                Text("This is some text that i want to display to the user!")
                Text("This is some text that i want to display!")
                Text("This is some text!")
            }
        }
        .frame(height: 300)
        // MARK: - Promeni padding da vidis kako se menja izbor koji od ponudjena 3 Text view-a ce biti prikazan
        .padding(50)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
