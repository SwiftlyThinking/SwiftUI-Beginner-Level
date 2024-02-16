//
//  NavigationStackBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 16.02.2024.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    @State private var stackPath: [Int] = []
    
    var body: some View {
        NavigationStack(path: $stackPath) {
            VStack {
                Button("Super segue") {
                    stackPath.append(contentsOf: [1, 4, 8])
                }
                
                ForEach(0..<10) { item in
                    NavigationLink(value: item) {
                        Text("Next \(item)")
                    }
                }
            }
            .navigationTitle("Navigation Stack")
            .navigationDestination(for: Int.self) { value in
                Text("Next \(value)")
            }
        }
    }
}

#Preview {
    NavigationStackBootcamp()
}
