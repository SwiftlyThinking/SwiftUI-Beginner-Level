//
//  GridBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 12.02.2024.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.gray)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]) {
                    Section {
                        ForEach(0..<21) { index in
                            Rectangle()
                                .fill(Color.gray)
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 1")
                            .font(.title)
                    }
                    
                    Section {
                        ForEach(0..<21) { index in
                            Rectangle()
                                .fill(Color.gray)
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 2")
                            .font(.title)
                    }
            }
        }
    }
}

#Preview {
    GridBootcamp()
}
