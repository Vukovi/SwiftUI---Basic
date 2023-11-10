//
//  36_TabView & PageControl.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 08.11.23.
//

import SwiftUI

struct TabView___PageControl: View {
    
    // MARK: - TabView selekcija ide preko tag-a (Slicno kao selektovani piker, isto preko tag-a)
    @State private var selection: Int = 0
    
    
    let icons: [String] = ["heart.fill", "house.fill", "globe", "person.fill"]
    
    var body: some View {
        
        // MARK: - Tab Bar
        TabView(selection: $selection) {
            HomeTabView(selection: $selection)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            Text("BROWSE TAB")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            
            Text("PROFILE TAB")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .accentColor(.red)
        
        
        // MARK: - Page controler
        TabView {
            ForEach(icons, id:\.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(
                gradient: Gradient(colors: [Color.red, Color.blue]),
                center: .center,
                startRadius: 5,
                endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(.page)
        
    }
}

#Preview {
    TabView___PageControl()
}

struct HomeTabView: View {
    
    @Binding var selection: Int
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack {
                Text("HOME TAB")
                    .font(.largeTitle)
                .foregroundStyle(.white)
                
                
                Button(action: {
                    selection = 2
                }, label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                })
            }
            
        }
    }
}
