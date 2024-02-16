//
//  SubmitBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 16.02.2024.
//

import SwiftUI

struct SubmitBootcamp: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        TextField("Some text here...", text: $textFieldText)
            .submitLabel(.send)
            .onSubmit { print("Something to the console!") }
    }
}

#Preview {
    SubmitBootcamp()
}
