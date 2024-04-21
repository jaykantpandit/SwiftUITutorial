//
//  SettingsView.swift
//  EnvironmentBootcamp
//
//  Created on 19/04/24.
//

import SwiftUI

class SettingViewModel: ObservableObject{
    var authViewModel = AuthViewModel()

    func callAPI(){
        DispatchQueue.main.asyncAfter(deadline: .now()+3){
            self.authViewModel.logout()
        }
    }
}

struct SettingsView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @StateObject var vm = SettingViewModel()
    
    var body: some View {
        VStack {
            // Other settings content
            
            Button(action: {
                authViewModel.logout()
//                vm.callAPI()
//                authViewModel.isAuthenticated = false
                
            }) {
                Text("Logout")
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
}
