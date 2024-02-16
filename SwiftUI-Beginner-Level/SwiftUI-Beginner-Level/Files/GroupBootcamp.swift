//
//  GroupBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 16.02.2024.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack {
            Group {
                Text("Hello, world!")
                Text("Hello, world!")
            }
            .font(.title)
            .foregroundStyle(Color.red)
            
            Text("Hello, world!")
                .font(.largeTitle)
                .foregroundStyle(Color.green)
        }
    }
}

#Preview {
    GroupBootcamp()
}
