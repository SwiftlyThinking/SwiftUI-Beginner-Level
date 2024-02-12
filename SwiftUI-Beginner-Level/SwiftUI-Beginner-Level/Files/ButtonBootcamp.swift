//
//  ButtonBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 12.02.2024.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            Button("Press me!") {
                self.title = "Button #1"
            }
            .tint(Color.red)
            
            Button {
                self.title = "Button #2"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .clipShape(.rect(cornerRadius: 10.0))
                            .shadow(radius: 10)
                    )
            }
            
            Button {
                self.title = "Button #3"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(Color.red)
                    )
            }
            
            Button {
                self.title = "Button #4"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(Color.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 3.0)
                    )
            }
        }
    }
}

#Preview {
    ButtonBootcamp()
}
