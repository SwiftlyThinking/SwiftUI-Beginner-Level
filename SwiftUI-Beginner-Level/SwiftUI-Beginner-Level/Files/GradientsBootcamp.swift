//
//  GradientsBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 11.02.2024.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.red
//                LinearGradient(
//                    colors: [Color.pink, Color.purple],
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing)
//                RadialGradient(
//                    colors: [Color.pink, Color.purple],
//                    center: .center,
//                    startRadius: 5,
//                    endRadius: 400)
                AngularGradient(
                    colors: [Color.pink, Color.purple],
                    center: .topLeading,
                    angle: .degrees(180))
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
