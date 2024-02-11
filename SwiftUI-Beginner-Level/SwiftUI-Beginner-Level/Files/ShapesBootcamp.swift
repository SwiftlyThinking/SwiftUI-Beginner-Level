//
//  ShapesBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 11.02.2024.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule(style: .circular)
        //Rectangle()
        RoundedRectangle(cornerRadius: 10.0)
            //.fill(Color.blue)
            //.foregroundStyle(Color.pink)
            //.stroke(Color.red)
            //.stroke(Color.blue, lineWidth: 30.0)
            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [20]))
            //.trim(from: 0.2, to: 1.0)
            //.stroke(Color.purple, lineWidth: 50)
            .frame(width: 100, height: 200)
    }
}

#Preview {
    ShapesBootcamp()
}
