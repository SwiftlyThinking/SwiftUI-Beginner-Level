//
//  AnimationTimingBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 13.02.2024.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimatig: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimatig.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimatig ? 350 : 50, height: 100)
                .animation(.linear(duration: 2.0), value: isAnimatig)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimatig ? 350 : 50, height: 100)
                .animation(.easeIn(duration: 2.0), value: isAnimatig)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimatig ? 350 : 50, height: 100)
                .animation(.easeInOut(duration: 2.0), value: isAnimatig)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimatig ? 350 : 50, height: 100)
                .animation(.easeOut(duration: 2.0), value: isAnimatig)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimatig ? 350 : 50, height: 100)
                .animation(.spring(
                    response: 1.0,
                    dampingFraction: 0.6,
                    blendDuration: 1.0),
                           value: isAnimatig)
            
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
