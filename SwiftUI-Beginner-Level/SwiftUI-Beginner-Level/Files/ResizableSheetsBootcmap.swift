//
//  ResizableSheetsBootcmap.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 16.02.2024.
//

import SwiftUI

struct ResizableSheetsBootcmap: View {
    
    @State var showSheet: Bool = false
    @State var detends: PresentationDetent = .large
    
    var body: some View {
        Button("Click me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView()
                .presentationDetents([.medium, .large], selection: $detends)
                //.presentationDetents([.fraction(0.15), .medium, .large])
                //.presentationDragIndicator(.hidden)
                //.interactiveDismissDisabled()
        }
    }
}

struct MyNextView: View {
    var body: some View {
        Color.green.ignoresSafeArea()
    }
}

#Preview {
    ResizableSheetsBootcmap()
}
