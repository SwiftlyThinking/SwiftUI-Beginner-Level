//
//  InitializerBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 12.02.2024.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let title: String
    let count: Int
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = Color.red
        } else {
            self.title = "Oranges"
            self.backgroundColor = Color.orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(Color.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundStyle(Color.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .clipShape(.rect(cornerRadius: 10.0))
    }
}

#Preview {
    HStack {
        InitializerBootcamp(count: 10, fruit: .apple)
        InitializerBootcamp(count: 20, fruit: .orange)
    }
}
