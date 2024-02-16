//
//  ButtonStylesBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 16.02.2024.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack(spacing: 20) {
            Button("Button #1") {
                
            }
            .buttonStyle(.bordered)
            .controlSize(.extraLarge)
            .buttonBorderShape(.capsule)
            
            Button("Button #2") {
                
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .buttonBorderShape(.roundedRectangle)
            
            Button("Button #3") {
                
            }
            .buttonStyle(.borderless)
            .controlSize(.mini)
            
            Button("Button #4") {
                
            }
            .buttonStyle(.plain)
            .controlSize(.regular)
        }
    }
}

#Preview {
    ButtonStylesBootcamp()
}
