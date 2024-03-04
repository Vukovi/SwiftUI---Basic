//
//  66_ObservableMacro.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 04.03.24.
//

import SwiftUI

// MARK: - Staro
//class ObservableViewModel: ObservableObject {
//    @Published var title: String = "Some title"
//    var value: String = "Vuk"
//}

// MARK: - Novo od iOS 17
@Observable
class ObservableViewModel {
    var title: String = "Some title"
    @ObservationIgnored var value: String = "Vuk"
}

struct ObservableMacro: View {
    
    // Staro
//    @StateObject private var viewModel: ObservableViewModel = ObservableViewModel()
    
    // Novo
    @State private var viewModel: ObservableViewModel = ObservableViewModel()
    
    var body: some View {
        VStack(spacing: 40) {
            Button(viewModel.title) {
                viewModel.title = "New title"
            }
            
            SomeChildView(viewModel: viewModel)
            
            SomeThirdChildView()
        }
//        .environmentObject(viewModel) // Staro
        .environment(viewModel) // Novo
    }
}



struct SomeChildView: View {
    
    // Staro
//    @ObservedObject var viewModel: ObservableViewModel
    
    // Novo
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Vuk title"
        }
    }
}



struct SomeThirdChildView: View {
    
    // Staro
//    @EnvironmentObject var viewModel: ObservableViewModel
    
    // Novo
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Third title"
        }
    }
}


#Preview {
    ObservableMacro()
}
