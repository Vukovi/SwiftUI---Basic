//
//  42_EnvironmentObject.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 08.11.23.
//

import SwiftUI

// MARK: - @EnvironmentObject je isto sto i @ObservedObject samo sto ne mora da se prenosi sa View-a na View, vec je dostupan svima

// MARK: - Da bi se koristio @EnvironmentObject, mora se na jednom mestu, najbolje na top View-u instancirati @StateObject koji se doda kao environment object preko .environmentObject(objekat)

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "iWatch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { value in
                    NavigationLink(destination: EnvironmentDetailView(selectedItem: value)) {
                        Text(value)
                    }
                }
            }
            .navigationTitle("Apple devices")
        }
        .environmentObject(viewModel)
    }
}

struct EnvironmentDetailView: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            NavigationLink(destination: EnvironmentFinalView()) {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }
            
        }
    }
    
}


struct EnvironmentFinalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
        
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
    
}



#Preview {
    EnvironmentObjectBootcamp()
}
