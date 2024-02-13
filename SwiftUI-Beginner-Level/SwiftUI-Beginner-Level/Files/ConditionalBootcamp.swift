//
//  ConditionalBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 13.02.2024.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack {
            if isLoading {
                ProgressView()
            } else {
                EmptyView()
            }
            
            Spacer()
            
            Button {
                isLoading.toggle()
            } label: {
                Text("Download")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(Color.blue)
                    .clipShape(.rect(cornerRadius: 20.0))
            }
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
