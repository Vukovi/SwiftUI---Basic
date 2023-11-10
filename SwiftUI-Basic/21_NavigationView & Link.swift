//
//  21_NavigationView & Link.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 07.11.23.
//

import SwiftUI

// MARK: - Nikad ne stavljaj NavigationView unutar drugog NavigationView-a, najbolje je postaviti jedan, npr na pocetku aplikacije

// MARK: - NavigationView inicijalizuje odmah sve View-eve koji su mu dati, to opterecuje aplikaciju i View-evi koji se iscratavaju moraju biti Lazy View-evi ili Lazy loading view-evi

struct NavigationView___Link: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello world! 1") {
                    LazyView {
                        MyOtherScreen(testValue: 1)
                    }
                }
                
                NavigationLink("Hello world! 2") {
                    LazyLoadingView(MyOtherScreen(testValue: 2))
                }
                
                NavigationLink("Hello world! 3") {
                    MyOtherScreen(testValue: 3)
                }
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            // MARK: - navigation title se uvek postavlja na top element unutar bloka NavigatioView-a, nikad na sam NavigationView
            .navigationTitle("Navigation View")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(
                leading: 
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                trailing: NavigationLink(
                    destination: MyOtherScreen(testValue: 4),
                    label: {
                        Image(systemName: "gear")
                    }
                    )
                    .accentColor(.red)
            )
        }
    }
}

struct MyOtherScreen: View {
    // MARK: - Ovaj property se upotrebljava i kod push-back funkcionalnosti i kod modally-presented dismiss funkcionalnosti
    @Environment(\.presentationMode) var mode
    
    var testValue: Int
    
    init(testValue: Int) {
        self.testValue = testValue
        print("MyOtherScreen Inititalized: \(testValue)")
    }
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("Second screen")
                .navigationBarTitleDisplayMode(.inline)
            
            VStack {
                Spacer()
                
                // MARK: - Upotreba custom button-a umesto back button-a
                Button("BACK BUTTON") {
                    mode.wrappedValue.dismiss()
                }
                
                Spacer()
                
                NavigationLink("Go to 3rd screen") {
                    Text("Third screen!")
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    NavigationView___Link()
}
