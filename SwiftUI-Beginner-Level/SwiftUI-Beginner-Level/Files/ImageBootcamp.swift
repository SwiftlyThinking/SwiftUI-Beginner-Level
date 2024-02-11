//
//  ImageBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 11.02.2024.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("photo")
            .resizable()
            //.aspectRatio(contentMode: .fill)
            //.scaledToFill()
            .scaledToFit()
            .frame(width: 300, height: 300)
            //.clipped()
            //.clipShape(Circle())
            .clipShape(.rect(cornerRadius: 25.0))
    }
}

#Preview {
    ImageBootcamp()
}
