//
//  ContentView.swift
//  GithubUserSearch
//
//  Created by Saba Gogrichiani on 07.12.23.
//

import SwiftUI

struct GithubUserSearchView: View {
    
    @AppStorage("isDarkMode") private var isDarkMode = false
    @State private var username = ""
    
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            
            VStack(spacing: 16) {
                HeaderView(isDarkMode: $isDarkMode)
                
                SearchBarView(username: $username, isDarkMode: $isDarkMode)
                
                Spacer()
            }
            .padding(.horizontal, 24)
            
        }
    }
}

#Preview {
    GithubUserSearchView()
}
