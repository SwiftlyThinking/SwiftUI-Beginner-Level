//
//  MaterialsBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 16.02.2024.
//

import SwiftUI

struct MaterialsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 50, height: 4)
                    .padding()
                
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .clipShape(.rect(cornerRadius: 30))
        }
        .ignoresSafeArea()
        .background(
            Image("photo")
        )
    }
}

#Preview {
    MaterialsBootcamp()
}
