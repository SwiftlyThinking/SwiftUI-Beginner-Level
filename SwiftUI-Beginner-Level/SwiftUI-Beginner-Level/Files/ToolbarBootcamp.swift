//
//  ToolbarBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 16.02.2024.
//

import SwiftUI

struct ToolbarBootcamp: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
            }
            .navigationTitle("Toolbar")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "ellipsis")
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
                        Image(systemName: "gearshape")
                        Image(systemName: "arrow.right")
                    }
                }
            }
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Action") {
                    
                }
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
