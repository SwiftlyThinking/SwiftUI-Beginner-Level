//
//  ColorPickerBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 14.02.2024.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .clear
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            ColorPicker("Background color", selection: $backgroundColor, supportsOpacity: true)
                .font(.headline)
                .foregroundStyle(.white)
                .padding()
                .background(Color.black)
                .clipShape(.rect(cornerRadius: 10.0))
                .padding()
                
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
