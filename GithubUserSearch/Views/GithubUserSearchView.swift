//
//  ContentView.swift
//  GithubUserSearch
//
//  Created by Saba Gogrichiani on 07.12.23.
//

import SwiftUI

struct GithubUserSearchView: View {
    
    @AppStorage("isDarkMode") private var isDarkMode = false
    @StateObject var viewModel = GithubUserViewModel()
    
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            
            VStack(spacing: 36) {
                HeaderView(isDarkMode: $isDarkMode)
                
                VStack(spacing: 16) {
                    SearchBarView(username: $viewModel.username, isDarkMode: $isDarkMode, viewModel: viewModel)
                    
                    if viewModel.isLoading {
                        ProgressLoaderView()
                    } else if let error = viewModel.error {
                        ErrorView(text: error)
                    } else if let _ = viewModel.user {
                        MainBodyView(viewModel: viewModel)
                    } else {
                        ErrorView(text: "Start your search to discover GitHub users")
                    }
                    
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
