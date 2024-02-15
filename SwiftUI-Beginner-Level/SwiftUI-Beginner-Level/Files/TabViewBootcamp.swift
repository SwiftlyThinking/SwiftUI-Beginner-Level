//
//  TabViewBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 15.02.2024.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 2
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Home Tab")
                .tabItem { Image(systemName: "house.fill") }
                .tag(0)
            
            TabView {
                RoundedRectangle(cornerRadius: 25.0)
                RoundedRectangle(cornerRadius: 25.0)
                RoundedRectangle(cornerRadius: 25.0)
            }
            .frame(height: 300)
            .tabViewStyle(.page)
            .tabItem { Image(systemName: "globe") }
            .tag(1)
            
            VStack {
                Text("Profile Tab")
                Button("Go to Home Tab") {
                    selectedTab = 0
                }
            }
            .tabItem { Image(systemName: "person.fill") }
            .tag(2)
            
        }
    }
}

#Preview {
    TabViewBootcamp()
}
