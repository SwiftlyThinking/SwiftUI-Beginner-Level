//
//  MenuBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 16.02.2024.
//

import SwiftUI

struct MenuBootcamp: View {
    
    @State var backgroundColor: Color = .clear
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            Menu("Click me") {
                Button("Button 1") {
                    backgroundColor = .green
                }
                
                Button("Button 2") {
                    backgroundColor = .purple
                }
                
                Button("Button 3") {
                    backgroundColor = .pink
                }
            }
        }
    }
}

#Preview {
    MenuBootcamp()
}
