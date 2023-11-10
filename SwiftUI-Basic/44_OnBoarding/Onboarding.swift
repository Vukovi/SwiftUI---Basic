//
//  44_Onboarding.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 09.11.23.
//

import SwiftUI

struct Onboarding: View {
    
    
    // Onboarding states:
    /*
     0 - welcome screen
     1 - add name
     2 - add age
     3 - add gender
     */
    @State var onboardingState: Int = 0
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
    
    // For alerts
    @State var showAlert: Bool = false
    @State var alertTitle: String = ""
    
    // App Storage
    @AppStorage("userName") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                case 0: welcomeSection.transition(transition)
                case 1: addNameSection.transition(transition)
                case 2: addAgeSection.transition(transition)
                case 3: addGenderSection.transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                }
            }
            
            // buttons
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text(alertTitle))
        })
    }
    
    
    
}

// MARK: - COMPONENTS
extension Onboarding {
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "Sign In" :
                onboardingState == 3 ? "FINISH" : "DO NEXT")
            .font(.headline)
            .foregroundStyle(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .animation(nil)
            .onTapGesture {
                handleNextButtonPress()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundStyle(.white)
                    , alignment: .bottom
                )
            Text("This is the number one app for finding your match. Here are going to be practised SwiftUI techinques and AppStorage proerty wrapper.")
                .fontWeight(.medium)
                .foregroundStyle(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    
    private var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Text(String(format: "%1.f", age))
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    
    private var addGenderSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)

            Picker(selection: $gender) {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
            } label: {
                Text(gender.count > 1 ? gender : "Select a gender:")
                    .font(.headline)
                    .foregroundStyle(.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
            }
            .pickerStyle(.menu)
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .accentColor(.purple)
            
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

// MARK: - FUNCTIONS
extension Onboarding {
    
    func handleNextButtonPress() {
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                getAlert(title: "Your name has to be at least 3 characters long!")
                return
            }
        case 3:
            guard gender.count > 1 else {
                getAlert(title: "Please select a geneder before moving on!")
                return
            }
        default: break
        }
        
        if onboardingState == 3 {
            // sign in
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    func getAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
}

#Preview {
    Onboarding()
        .background(Color.purple)
}
