//
//  HomeView.swift
//  EnvironmentBootcamp
//
//  Created on 19/04/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        NavigationView(content: {
            VStack{
                Image(systemName: "person")
                    .foregroundColor(.pink)
                    .font(.largeTitle)
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.large)
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: SettingsView()) { Image(systemName: "gear") }
                }
            })

        })
        
        
    }
}

#Preview {
    HomeView()
}
