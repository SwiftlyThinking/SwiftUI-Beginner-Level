//
//  ForEachBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 12.02.2024.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey there"]
    
    var body: some View {
        VStack {
            ForEach(data, id: \.self) { item in
                Text("\(item)")
                    .font(.title)
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
