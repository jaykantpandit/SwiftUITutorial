//
//  EnvironmentBootcampApp.swift
//  EnvironmentBootcamp
//
//  Created on 19/04/24.
//

import SwiftUI

@main
struct EnvironmentBootcampApp: App {
    @StateObject var authViewModel = AuthViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authViewModel)
        }
    }

}
