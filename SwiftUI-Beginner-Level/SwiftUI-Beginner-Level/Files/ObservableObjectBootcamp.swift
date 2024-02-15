//
//  ObservableObjectBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 15.02.2024.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    
    @Published var fruitArray: [FruitModel] = []
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 10)
        let fruit2 = FruitModel(name: "Banana", count: 15)
        let fruit3 = FruitModel(name: "Grape", count: 20)
        
        fruitArray.append(contentsOf: [fruit1, fruit2, fruit3])
    }
    
    func deleteFruit(indexSet: IndexSet) {
        fruitArray.remove(atOffsets: indexSet)
    }
    
    func moveFruit(indexSet: IndexSet, to: Int) {
        fruitArray.move(fromOffsets: indexSet, toOffset: to)
    }
}

struct ObservableObjectBootcamp: View {
    
//    @State var fruitArray: [FruitModel] = [
//        FruitModel(name: "Apple", count: 5)
//    ]
    
    @StateObject var vm = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.fruitArray) { fruit in
                    HStack {
                        Text("\(fruit.count)")
                            .foregroundStyle(Color.red)
                        Text(fruit.name)
                            .font(.headline)
                            .bold()
                    }
                }
                .onDelete(perform: vm.deleteFruit)
                .onMove(perform: vm.moveFruit)
            }
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .navigationBarItems(leading: EditButton())
            .navigationBarItems(trailing:
                                    NavigationLink(destination: RandomScreen(vm: vm)) { Text("Go")
            }
            )
        }
    }
}

struct RandomScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @ObservedObject var vm: FruitViewModel
    
    var body: some View {
        VStack {
            
            ForEach(vm.fruitArray) { fruit in
                Text(fruit.name)
            }
            
            Button {
                dismiss()
            } label: {
                Text("Back")
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ObservableObjectBootcamp()
}
