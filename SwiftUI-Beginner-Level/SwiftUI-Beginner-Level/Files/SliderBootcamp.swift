//
//  SliderBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 15.02.2024.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var selection: Double = 0
    
    var body: some View {
        VStack {
            Text(String(format: "%.0f", selection))
                .font(.title)
                .fontWeight(.semibold)
            
            //Slider(value: $selection)
            //Slider(value: $selection, in: 0...100, step: 1.0)
            Slider(value: $selection, in: 1...100) {
                Text("Slider")
            } minimumValueLabel: {
                Text("1")
            } maximumValueLabel: {
                Text("100")
            }
        }
        .padding()
    }
}

#Preview {
    SliderBootcamp()
}
