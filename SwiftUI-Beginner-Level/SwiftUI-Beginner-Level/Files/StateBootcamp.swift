//
//  StateBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 12.02.2024.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text(title)
                    .font(.title)
                Text("\(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .red
                        title = "Button 1"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .green
                        title = "Button 2"
                        count -= 1
                    }
                }
            }
            .foregroundStyle(Color.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
