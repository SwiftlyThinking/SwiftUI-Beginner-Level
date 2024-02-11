//
//  TextBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 11.02.2024.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is the Swiftul Thinking Bootcamp. I am really enjoying this course and learning alot.".capitalized)
            //.font(.title)
            //.fontWeight(.semibold)
            //.bold()
            //.underline()
            //.underline(true, color: Color.red)
            //.italic()
            //.strikethrough()
            //.strikethrough(true, color: Color.green)
            //.font(.system(size: 24, weight: .semibold, design: .rounded))
            //.baselineOffset(10.0)
            //.kerning(10.0)
            .multilineTextAlignment(.center)
            .foregroundStyle(Color.red)
            .frame(width: 150, height: 150, alignment: .center)
            .minimumScaleFactor(0.8)
        
    }
}

#Preview {
    TextBootcamp()
}
