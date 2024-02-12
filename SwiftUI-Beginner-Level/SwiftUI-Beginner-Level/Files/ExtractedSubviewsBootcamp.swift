//
//  ExtractedSubviewsBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 12.02.2024.
//

import SwiftUI

struct ExtractedSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 1, color: .red)
            MyItem(title: "Bananas", count: 5, color: .yellow)
            MyItem(title: "Peaches", count: 3, color: .pink)
        }
    }
}

#Preview {
    ExtractedSubviewsBootcamp()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .clipShape(.rect(cornerRadius: 10))
    }
}
