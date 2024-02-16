//
//  SafeAreaInsetBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 16.02.2024.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Image(systemName: "bell.fill")
                    .padding()
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .padding()
            }
            .safeAreaInset(edge: .bottom) {
                Text("Hello")
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow)
            }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
