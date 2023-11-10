//
//  51_FocusState.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 09.11.23.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    // MARK: - @FocusState ne mora da se instancira, a omogucuje i da se iz koda postavi nesto u fokus, obicno tekst
    
    // MARK: - Zgodno je za popunjavanje vise textFielda jer se moze napraviti logika da fokus prelazi sa jednog na drugi

    @FocusState var usernameInFocus: Bool
    @State var textFieldText: String = ""
    
    @FocusState var passwordInFocus: Bool
    @State var passwordText: String = ""
    
    enum OnboardingField: Hashable {
        case myUsername
        case somePassword
    }
    
    @FocusState var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name here...", text: $textFieldText)
//                .focused($usernameInFocus)
                .focused($fieldInFocus, equals: .myUsername)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password here...", text: $passwordText)
//                .focused($passwordInFocus)
                .focused($fieldInFocus, equals: .somePassword)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            
            Button("Toggle focus") {
                usernameInFocus.toggle()
            }
            
            // MARK: - EMOJI = CTRL + CMD + SPACE
            Button("Sign Up 🚀") {
                let usernameValid = !textFieldText.isEmpty
                let passwordValid = !passwordText.isEmpty
                
                if usernameValid && passwordValid {
                    print("SIGN UP")
                } else if usernameValid {
                    usernameInFocus = false
                    passwordInFocus = true
                    
                    fieldInFocus = .somePassword
                } else {
                    usernameInFocus = true
                    passwordInFocus = false
                    
                    fieldInFocus = .myUsername
                }
            }
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                usernameInFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateBootcamp()
}
