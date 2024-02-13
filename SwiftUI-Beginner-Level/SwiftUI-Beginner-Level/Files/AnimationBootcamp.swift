//
//  AnimationBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 13.02.2024.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack(spacing: 50) {
            Button("Button") {
                withAnimation(.spring(.bouncy)) {
                    isAnimated.toggle()
                }
            }
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 10)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
        }
    }
}

#Preview {
    AnimationBootcamp()
}
