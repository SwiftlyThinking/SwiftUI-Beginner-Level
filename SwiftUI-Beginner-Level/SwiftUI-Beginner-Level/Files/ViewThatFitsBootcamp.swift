//
//  ViewThatFitsBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 16.02.2024.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            ViewThatFits {
                Text("This is some text that I would like to display to the user!")
                Text("This is some text that I rould like to display!")
                Text("This is some text!")
            }
        }
        .frame(height: 350)
        .padding(16)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
