//
//  PopoverBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 16.02.2024.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var isPresented: Bool = false
    @State var feedbackOptions: [String] = [
        "Very good 😁",
        "Average 🙂",
        "Very bad 😡"
    ]
    
    var body: some View {
        Button("Click me") {
            isPresented.toggle()
        }
        .popover(isPresented: $isPresented, attachmentAnchor: .point(.topTrailing)) {
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(feedbackOptions, id: \.self) { item in
                        Button(item) {
                            
                        }
                        
                        if item != feedbackOptions.last {
                            Divider()
                        }
                    }
                }
            }
            .padding()
            .presentationCompactAdaptation(.popover)
        }
    }
}

#Preview {
    PopoverBootcamp()
}
