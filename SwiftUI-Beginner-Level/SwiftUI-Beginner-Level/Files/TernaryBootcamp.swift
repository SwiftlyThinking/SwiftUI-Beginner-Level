//
//  TernaryBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 13.02.2024.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isPressed: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isPressed.toggle()
            }
            
            Text(isPressed ? "Red" : "Green")
            
            RoundedRectangle(cornerRadius: isPressed ? 25 : 5)
                .fill(isPressed ? Color.red : Color.green)
                .frame(
                    width: isPressed ? 300 : 200,
                    height: isPressed ? 50 : 100)
        }
    }
}

#Preview {
    TernaryBootcamp()
}
