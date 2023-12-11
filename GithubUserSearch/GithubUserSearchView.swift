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
            
            VStack(spacing: 36) {
                HeaderView(isDarkMode: $isDarkMode)
                
                VStack(spacing: 16) {
                    SearchBarView(username: $username, isDarkMode: $isDarkMode)
                    
                    MainBodyView()
                }
                
                Spacer()
            }
            .padding(.horizontal, 24)
            
        }
    }
}

#Preview {
    GithubUserSearchView()
}
