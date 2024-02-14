//
//  TextFieldBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 14.02.2024.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                //.textFieldStyle(.roundedBorder)
                    .font(.headline)
                    .foregroundStyle(Color.blue)
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .clipShape(.rect(cornerRadius: 10.0))
                    .padding(.horizontal)
                
                Button {
                    if textIsAppropriate() {
                        saveText()
                    }
                } label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundStyle(Color.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .clipShape(.rect(cornerRadius: 10.0))
                        .padding(.horizontal)
                }
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { text in
                    Text(text)
                }
                
                Spacer()
            }
            .navigationTitle("TextField Bootcamp")
        }
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        
        return false
    }
}

#Preview {
    TextFieldBootcamp()
}
