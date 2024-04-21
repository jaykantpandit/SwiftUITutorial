//
//  LoginView.swift
//  EnvironmentBootcamp
//
//  Created on 19/04/24.
//

import SwiftUI

struct LoginView: View {
//    @EnvironmentObject var authViewModel: AuthViewModel

    var body: some View {
        NavigationView(content: {
            VStack{
                NavigationLink(destination: LoginViewPage2()) { Text("Open OTP View") }
            }
            .navigationTitle("Login")
            .navigationBarTitleDisplayMode(.large)
        })
        
//        Button {
//            authViewModel.isAuthenticated = true
//        } label: {
//            Text("Login")
//        }
    }
}

#Preview {
    LoginView()
}

struct LoginViewPage2: View {
    @EnvironmentObject var authViewModel: AuthViewModel

    var body: some View {
        Button {
            authViewModel.isAuthenticated = true
        } label: {
            Text("Login")
        }
        .navigationTitle("LoginViewPage2")
        .navigationBarTitleDisplayMode(.inline)

    }
}
