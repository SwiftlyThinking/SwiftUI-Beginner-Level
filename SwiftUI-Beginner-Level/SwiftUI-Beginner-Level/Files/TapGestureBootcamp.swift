//
//  TapGestureBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 15.02.2024.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var buttonBackgroundColor: Color = .blue
    
    var body: some View {
        VStack {
            Text("Click on me")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
                .padding()
                .background(buttonBackgroundColor)
                .clipShape(.rect(cornerRadius: 15.0))
                .onTapGesture {
                    withAnimation(.default) {
                        buttonBackgroundColor = buttonBackgroundColor == .blue ? .red : .blue
                    }
                }
            
            Text("Double click on me")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
                .padding()
                .background(buttonBackgroundColor)
                .clipShape(.rect(cornerRadius: 15.0))
                .onTapGesture(count: 2) {
                    withAnimation(.default) {
                        buttonBackgroundColor = .green
                    }
                }
        }
    }
}

#Preview {
    TapGestureBootcamp()
}
