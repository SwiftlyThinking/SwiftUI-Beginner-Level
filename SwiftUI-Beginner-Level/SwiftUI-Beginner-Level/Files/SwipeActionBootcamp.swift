//
//  SwipeActionBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 16.02.2024.
//

import SwiftUI

struct SwipeActionBootcamp: View {
    var body: some View {
        List {
            ForEach(0..<5) { number in
                Text("\(number)")
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        Button("Archive") {
                            
                        }
                        .tint(.orange)
                        
                        Button("Save") {
                            
                        }
                        .tint(.purple)
                        
                        Button("Junk") {
                            
                        }
                        .tint(.green)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Share") {
                            
                        }
                        .tint(.blue)
                    }
            }
        }
    }
}

#Preview {
    SwipeActionBootcamp()
}
