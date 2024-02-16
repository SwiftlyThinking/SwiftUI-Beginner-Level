//
//  AsyncImageBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 16.02.2024.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
        AsyncImage(url: url) { returnedImage in
            returnedImage
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .clipShape(.rect(cornerRadius: 20))
                .shadow(radius: 10)
            
        } placeholder: {
            ProgressView()
        }
    }
}

#Preview {
    AsyncImageBootcamp()
}
