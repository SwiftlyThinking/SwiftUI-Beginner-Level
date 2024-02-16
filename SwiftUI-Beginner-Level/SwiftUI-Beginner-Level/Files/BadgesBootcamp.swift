//
//  BadgesBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 16.02.2024.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        TabView {
            Text("First")
                .tabItem { Image(systemName: "person.fill") }
                .tag("First")
                .badge(2)
            
            Text("Second")
                .tabItem { Image(systemName: "globe") }
                .tag("Second")
                .badge("NEW")
            
            Text("Third")
                .tabItem { Image(systemName: "heart.fill") }
                .tag("Third")
                .badge(20)
        }
    }
}

#Preview {
    BadgesBootcamp()
}
