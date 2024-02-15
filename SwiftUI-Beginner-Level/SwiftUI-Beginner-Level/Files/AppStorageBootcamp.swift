//
//  AppStorageBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 15.02.2024.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("name") var username = "No name"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(username)
            
            Button {
                username = "Nick"
            } label: {
                Text("Save")
            }
        }
    }
}

#Preview {
    AppStorageBootcamp()
}
