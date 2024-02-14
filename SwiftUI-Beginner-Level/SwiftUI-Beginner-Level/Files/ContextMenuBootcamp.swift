//
//  ContextMenuBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 14.02.2024.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftul Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(backgroundColor)
        .clipShape(.rect(cornerRadius: 30.0))
        .contextMenu() {
            Button("Green") {
                backgroundColor = .green
            }
            
            Button("Blue") {
                backgroundColor = .blue
            }
            
            Button("Purple") {
                backgroundColor = .purple
            }
        }
    }
}

#Preview {
    ContextMenuBootcamp()
}
