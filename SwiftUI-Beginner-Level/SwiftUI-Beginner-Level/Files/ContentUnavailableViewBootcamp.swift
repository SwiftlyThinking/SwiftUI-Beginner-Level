//
//  ContentUnavailableViewBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 25.02.2024.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
        ContentUnavailableView.search(text: "apple")
//        ContentUnavailableView(
//            "No Internet Connection",
//            systemImage: "wifi.slash",
//            description: Text("Please connect to the internet and try again."))
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
