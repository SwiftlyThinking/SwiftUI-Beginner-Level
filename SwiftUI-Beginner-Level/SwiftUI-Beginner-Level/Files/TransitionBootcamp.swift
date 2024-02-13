//
//  TransitionBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 13.02.2024.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var isPressed: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    withAnimation(.default) {
                        isPressed.toggle()
                    }
                }
                Spacer()
            }
            
            if isPressed {
                RoundedRectangle(cornerRadius: 30.0)
                    .frame(height: 400)
                    //.transition(.move(edge: .leading))
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing)))
            }
        }
    }
}

#Preview {
    TransitionBootcamp()
}
