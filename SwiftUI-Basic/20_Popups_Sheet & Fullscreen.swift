//
//  20_Popups_Sheet & Fullscreen.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 07.11.23.
//

import SwiftUI

struct Popups_Sheet___Fullscreen: View {
    
    @State private var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
        }
        // MARK: - Samo jedan sheet po View-u moze da ide, dakle .sheet ne moze dva ili vise puta da se pozove, isto tako .fullScreenCover je takodje sheet, tako da opet samo jedna kombinacija moze, ili sheet ili fullScreen
        .sheet(isPresented: $showSheet, content: {
            // MARK: - Ne unosi nikakve if/else, switch-eve ovde jer se ovo iscrtava zajedno sa glavnim View-om, dakle samo jedan View koji ce biti sheet!
            SecondScreen()
        })
//        .fullScreenCover(isPresented: $showSheet, content: {
//            SecondScreen()
//        })
    }
}


struct SecondScreen: View {
    
     
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
                    .background(Color.red.cornerRadius(10))
            })
        }
    }
    
}

#Preview {
    Popups_Sheet___Fullscreen()
}
