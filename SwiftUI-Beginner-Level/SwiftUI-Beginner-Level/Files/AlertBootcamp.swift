//
//  AlertBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 14.02.2024.
//

import SwiftUI

struct AlertBootcamp: View {
    
    enum MyAlerts {
        case error1
        case error2
    }
    
    @State var showAlert: Bool = false
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var alertType: MyAlerts? = nil
    
    var body: some View {
        VStack {
            Button("Click here") {
                alertType = .error1
                getAlert()
                //alertTitle = "Error 1"
                //alertMessage = "Messege for error 1"
                showAlert.toggle()
            }
            
            Button("Click here") {
                alertType = .error2
                getAlert()
                //alertTitle = "Error 2"
                //alertMessage = "Messege for error 2"
                showAlert.toggle()
            }
        }
        .alert(alertTitle, isPresented: $showAlert) {
            Button("Delete", role: .destructive) {}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text(alertTitle)
        }
    }
    
    func getAlert() {
        switch alertType {
        case .error1:
            alertTitle = "Error 1"
            alertMessage = "Message for error 1"
        case .error2:
            alertTitle = "Error 2"
            alertMessage = "Message for error 2"
        case nil:
            alertTitle = ""
            alertMessage = ""
        }
    }
}

#Preview {
    AlertBootcamp()
}
