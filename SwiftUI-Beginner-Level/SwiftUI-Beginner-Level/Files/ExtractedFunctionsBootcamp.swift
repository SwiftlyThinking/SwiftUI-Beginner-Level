//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 12.02.2024.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = .yellow
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(Color.black)
                    .clipShape(.rect(cornerRadius: 10.0))
            }
        }
    }
    
    func buttonPressed() {
        backgroundColor = Color.pink
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
