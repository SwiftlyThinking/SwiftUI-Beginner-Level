//
//  PaddingBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 12.02.2024.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("This as the description of what we will do on this screen. It's multiple lines and we will align the text to the leading edge.")
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .shadow(color: Color.black.opacity(0.3), radius: 10, y: 10)
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingBootcamp()
}
