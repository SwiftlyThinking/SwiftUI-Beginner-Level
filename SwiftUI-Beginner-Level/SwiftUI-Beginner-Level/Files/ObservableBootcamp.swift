//
//  ObservableBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 28.02.2024.
//

import SwiftUI

@Observable class ObservableViewModel {
    
    var title: String = "Some title!"
//    @ObservationIgnored var title: String = "Some title"
    
}

struct ObservableBootcamp: View {
    
    @State private var vm = ObservableViewModel()
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Text("Title: ")
                Text(vm.title)
            }
            
            Button("First") {
                vm.title = "First"
            }
            
            SomeChildView(vm: vm)
            SomeThirdView()
        }
        .environment(vm)
    }
}

struct SomeChildView: View {
    
    @Bindable var vm: ObservableViewModel
    
    var body: some View {
        Button("Second") {
            vm.title = "Second"
        }
    }
}

struct SomeThirdView: View {
    
    @Environment(ObservableViewModel.self) var vm
    
    var body: some View {
        Button("Third") {
            vm.title = "Third"
        }
    }
}

#Preview {
    ObservableBootcamp()
}
