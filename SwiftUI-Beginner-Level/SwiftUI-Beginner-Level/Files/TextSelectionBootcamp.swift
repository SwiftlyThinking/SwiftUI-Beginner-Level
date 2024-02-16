//
//  TextSelectionBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 16.02.2024.
//

import SwiftUI

struct TextSelectionBootcamp: View {
    var body: some View {
        Text("You can select this text")
            .textSelection(.enabled)
    }
}

#Preview {
    TextSelectionBootcamp()
}
