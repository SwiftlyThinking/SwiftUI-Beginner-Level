//
//  NavigationViewBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 13.02.2024.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Link") {
                MyOtherScreen()
                }
                
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.inline)
            //.navigationBarHidden(true)
            .navigationBarItems(trailing: NavigationLink(
                destination: MyOtherScreen(),
                label: {
                Image(systemName: "gearshape.fill")
            }))
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}

struct MyOtherScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                Button("Back button") {
                    dismiss()
                }
            }
        }
        .navigationTitle("Second screen")
        .navigationBarHidden(true)
    }
}
