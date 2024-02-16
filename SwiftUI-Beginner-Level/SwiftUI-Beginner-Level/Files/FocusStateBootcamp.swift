//
//  FocusStateBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 16.02.2024.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
    @State var username: String = ""
    @State var password: String = ""
    
//    @FocusState private var isUsernameInFocus: Bool
//    @FocusState private var isPasswordInFocus: Bool
    
    @FocusState private var isInFocus: OnboardingField?
    
    var body: some View {
        VStack {
            TextField("username", text: $username)
                .focused($isInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .clipShape(.rect(cornerRadius: 10))
            
            TextField("password", text: $password)
                .focused($isInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .clipShape(.rect(cornerRadius: 10))
            
            Button {
                isInFocusFunction()
            } label: {
                Text("Sign up")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.green.brightness(0.3))
                    .clipShape(.rect(cornerRadius: 10))
            }
        }
        .padding(40)
        .onAppear {
            isInFocus = .username
        }
    }
    
    func isInFocusFunction() {
        let usernameIsValid = !username.isEmpty
        let passwordIsValid = !password.isEmpty
        
        if usernameIsValid && passwordIsValid {
            username = ""
            password = ""
            print("Sign up")
        } else if usernameIsValid {
            isInFocus = .password
        } else {
            isInFocus = .username
        }
    }
}

#Preview {
    FocusStateBootcamp()
}
