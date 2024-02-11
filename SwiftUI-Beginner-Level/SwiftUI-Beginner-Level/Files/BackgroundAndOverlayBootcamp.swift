//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 11.02.2024.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
            Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundStyle(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [Color.purple, Color.pink],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color.purple, radius: 10, y: 10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundStyle(Color.white)
                            )
                            .shadow(
                                color: Color.purple,
                                radius: 10,
                                x: 5,
                                y: 5)
                        , alignment: .bottomTrailing
                    )
            )
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
