//
//  ToggleBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 14.02.2024.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var isToggle: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            HStack(spacing: 5) {
                Text("Status:")
                
                Text(isToggle ? "Online" : "Offline")
                    .foregroundStyle(isToggle ? .green : .red)
            }
            .font(.title)
            
            Toggle(isOn: $isToggle) {
                Text("Change status")
            }
        }
        .padding()
    }
}

#Preview {
    ToggleBootcamp()
}
