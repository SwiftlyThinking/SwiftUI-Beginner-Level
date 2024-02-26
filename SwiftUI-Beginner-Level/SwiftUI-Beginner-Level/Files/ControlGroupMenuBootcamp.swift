//
//  ControlGroupMenuBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 26.02.2024.
//

import SwiftUI

struct ControlGroupMenuBootcamp: View {
    var body: some View {
        Menu("My Menu") {
            Button("One") {}
            Button("Two") {}
            
            ControlGroup {
                Button("Four") {}
                Button("Five") {}
            }
            
            Menu("Three") {
                Button("Hello!") {}
                Button("Hi!") {}
            }
        }
    }
}

#Preview {
    ControlGroupMenuBootcamp()
}
