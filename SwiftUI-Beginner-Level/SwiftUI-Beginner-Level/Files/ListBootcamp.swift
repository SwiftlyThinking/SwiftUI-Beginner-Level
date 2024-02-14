//
//  ListBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 14.02.2024.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "Apple", "Orange", "Banana", "Peach"
    ]
    
    @State var veggies: [String] = [
        "Tomato", "Potato", "Carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                            .listRowBackground(Color.yellow)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                } header: {
                    Text("Fruits")
                }
                
                Section {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies)
                            .listRowBackground(Color.green)
                    }
                } header: {
                    Text("Veggies")
                }
            }
            .background(Color.pink.opacity(0.3))
            .scrollContentBackground(.hidden)
            .listStyle(.grouped)
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton())
            .navigationBarItems(trailing: Button("Add") { add() })
        }
        .tint(.green)
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indexSet: IndexSet, to: Int) {
        fruits.move(fromOffsets: indexSet, toOffset: to)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}
