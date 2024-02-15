//
//  StepperBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 15.02.2024.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    
    var body: some View {
        VStack {
            Text("\(stepperValue)")
                .font(.title)
                .fontWeight(.semibold)
            
            Stepper("Stepper", value: $stepperValue)
            
            Stepper("Stepper") {
                increment(amount: 10)
            } onDecrement: {
                increment(amount: -10)
            }

        }
        .padding()
    }
    
    func increment(amount: Int) {
        withAnimation(.default) {
            stepperValue += amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
