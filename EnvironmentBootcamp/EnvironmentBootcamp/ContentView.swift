//
//  ContentView.swift
//  EnvironmentBootcamp
//
//  Created on 19/04/24.
//

import SwiftUI

class AuthViewModel: ObservableObject {
    @Published var isAuthenticated = false
    
    func logout() {
        // Perform logout actions, e.g., clear user session, reset authentication status
        isAuthenticated = false
    }
}



struct ContentView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
       
       var body: some View {
           Group {
               if authViewModel.isAuthenticated {
                   HomeView()
               } else {
                   LoginView()
               }
           }
       }
}

#Preview {
    ContentView()
}
