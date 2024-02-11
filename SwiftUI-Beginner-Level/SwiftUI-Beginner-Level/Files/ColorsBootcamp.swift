//
//  ColorsBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 11.02.2024.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.primary
                //Color(UIColor.secondarySystemBackground)
                Color.custom
            )
            .frame(width: 300, height: 200)
            //.shadow(radius: 10)
            .shadow(color: Color.blue.opacity(0.6), radius: 10, x: -20, y: -20)
    }
}

#Preview {
    ColorsBootcamp()
}
