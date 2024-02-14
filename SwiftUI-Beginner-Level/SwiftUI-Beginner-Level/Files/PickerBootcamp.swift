//
//  PickerBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 14.02.2024.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection1: String = "18"
    @State var selection2: String = "Most Recent"
    @State var filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            Picker(selection: $selection2) {
                ForEach(filterOptions, id: \.self) { option in
                    Text(option).tag(option)
                }
            } label: {
                Text("Picker")
            }
            .pickerStyle(.segmented)
            .background(Color.green)

            
            HStack(spacing: 0) {
                Text("Your age:")
                Picker(selection: $selection1) {
                    ForEach(18..<100) { number in
                        Text("\(number)").tag("\(number)")
                    }
                } label: {
                    Text("Picker")
                        .background(Color.red)
                }
                .pickerStyle(.menu)
            }
        }
        .padding()
    }
}

#Preview {
    PickerBootcamp()
}
