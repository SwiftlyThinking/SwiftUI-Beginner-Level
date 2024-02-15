//
//  OnAppearBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 15.02.2024.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink(destination: Text("")) {
                    Text(myText)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    myText = "This is the new text!"
                }
            }
            .onDisappear {
                myText = "Ending text"
            }
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
