//
//  TextEditorBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 14.02.2024.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "This is the "
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .colorMultiply(Color.gray.opacity(0.2))
                    .clipShape(.rect(cornerRadius: 10.0))
                    .padding(.horizontal)
                
                Button {
                    savedText = textEditorText
                    textEditorText = ""
                } label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundStyle(Color.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .clipShape(.rect(cornerRadius: 10.0))
                        .padding(.horizontal)
                }
                Text(savedText)
                
                Spacer()
            }
            .navigationTitle("TextEditor Bootcamp")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
