//
//  EnvironmentObjectBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 15.02.2024.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
       getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac"])
    }
    
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var vm = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(item: item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(vm)
    }
}

struct DetailView: View {
    
    let item: String
    
    var body: some View {
        NavigationLink {
            FinalView()
        } label: {
            Text(item)
                .font(.headline)
                .fontWeight(.medium)
                .foregroundStyle(Color.orange)
        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var vm: EnvironmentViewModel
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(vm.dataArray, id: \.self) { item in
                    Text(item)
                }
            }
        }
    }
}

#Preview {
    EnvironmentObjectBootcamp()
        .environmentObject(EnvironmentViewModel())
}
