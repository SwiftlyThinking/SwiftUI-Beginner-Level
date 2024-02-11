//
//  IconsBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 11.02.2024.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .renderingMode(.original)
            .resizable()
            //.aspectRatio(contentMode: .fill)
            //.aspectRatio(contentMode: .fit)
            .scaledToFit()
            //.scaledToFill()
            //.font(.title)
            //.font(.system(size: 200))
            //.foregroundStyle(Color.green)
            .frame(width: 300, height: 300)
            //.clipped()
    }
}

#Preview {
    IconsBootcamp()
}
