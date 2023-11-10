//
//  41_StateObject & ObservableObject.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 08.11.23.
//

import SwiftUI

// MARK: - @ObservedObject i @StateObject su ista stvar, odnose se na objekat koji se posmatra, s tim sto se @ObservedObject refreshuje zajedno sa reloadovanje View-a koji ga koristi, a @StateObject je perzistentan, tj nece se menjati sa reloadovanjem View-a

// MARK: - Prvo mesto na kom ce se upotrebiti objekat koji posmatra neki ObservableObject, kao sto je class FruitViewModel, tj prvo mesto na kojem ce se ovaj objekat instancirati treba da se instancira se @StateObject, a kad se taj objekat prenosi dalje, na npr child view-eve, onda se u njima instancira kao @ObservedObject

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}


class FruitViewModel: ObservableObject {
    
    init() {
        getFruits()
    }
    
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            self?.fruitArray.append(contentsOf: [fruit1, fruit2, fruit3])
            self?.isLoading = false
        }
        
    }
    
    func deleteFruit(indexSet: IndexSet) {
        fruitArray.remove(atOffsets: indexSet)
    }
}


struct StateObject___ObservableObject: View {
    
//    @ObservedObject var viewModel: FruitViewModel = FruitViewModel()
    @StateObject var viewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        
        NavigationView {
            List {
                if viewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(viewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .fontWeight(.bold)
                        }
                    }
                    .onDelete(perform: viewModel.deleteFruit)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                                    NavigationLink(
                                        destination: FruitDetailView(viewModel: viewModel),
                                        label: {
                                            Image(systemName: "arrow.right")
                                                .font(.title)
                                        })
            )
            // MARK: - Ovo ce dodavati svaki put po 3 nova fruit modela, jer se ova metoda poziva na .onAppear, zato cemo je napraviti da se poziva u init metodi samog viewModela
//            .onAppear {
//                viewModel.getFruits()
//            }
        }
    }
}


struct FruitDetailView: View {
    
    @ObservedObject var viewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                ForEach(viewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                }
            }
        }
    }
}

#Preview {
    StateObject___ObservableObject()
}
