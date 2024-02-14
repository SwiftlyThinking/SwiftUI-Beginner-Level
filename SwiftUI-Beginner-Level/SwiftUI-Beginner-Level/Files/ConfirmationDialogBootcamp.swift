//
//  ConfirmationDialogBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 14.02.2024.
//

import SwiftUI

struct ConfirmationDialogBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionType: MyAction? = nil
    @State var actionTitle: String = ""
    @State var actionMessage: String = ""
    
    enum MyAction {
        case action1
        case action2
    }
    
    var body: some View {
        VStack {
            Button("Click me") {
                actionType = .action1
                getActionSheet()
                showActionSheet.toggle()
            }
            
            Button("Click me") {
                actionType = .action2
                getActionSheet()
                showActionSheet.toggle()
            }
        }
        .confirmationDialog(actionTitle, isPresented: $showActionSheet) {
            Button("Cancel", role: .cancel) {}
            Button("Delete", role: .destructive) {}
        } message: {
            Text(actionMessage)
        }
    }
    
    func getActionSheet() {
        switch actionType {
        case .action1:
            actionTitle = "Action 1"
            actionMessage = "Message for action 1"
        case .action2:
            actionTitle = "Action 2"
            actionMessage = "Message for action 2"
        case nil:
            actionTitle = ""
            actionMessage = ""
        }
    }
}

#Preview {
    ConfirmationDialogBootcamp()
}
