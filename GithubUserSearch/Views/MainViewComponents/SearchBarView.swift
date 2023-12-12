//
//  SearchBarView.swift
//  GithubUserSearch
//
//  Created by Saba Gogrichiani on 07.12.23.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var username: String
    @Binding var isDarkMode: Bool
    @ObservedObject var viewModel: GithubUserViewModel
    
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "magnifyingglass")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundStyle(Color(red: 0, green: 0.47, blue: 1))
            
            TextField("Search GitHub username…", text: $username)
                .font(Font.custom("Space Mono", size: 14))
                .foregroundColor(Color("body"))
            
            Button(action: {
                viewModel.fetchUser(username) 
                hideKeyboard()
            }) {
                Text("Search")
                    .font(
                        Font.custom("Space Mono", size: 14)
                            .weight(.bold)
                    )
                    .padding()
                    .foregroundColor(.white)
                    .frame(height: 46)
                    .background(Color(red: 0, green: 0.47, blue: 1))
                    .cornerRadius(8)
            }
        }
        .padding()
        .frame(height: 60)
        .background(Color("viewBody"))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: !isDarkMode ? Color(red: 0.28, green: 0.38, blue: 0.73).opacity(0.2) : Color.clear, radius: 15, x: 0, y: 16)
    }
}


#Preview {
    SearchBarView(username: .constant(""), isDarkMode: .constant(false), viewModel: GithubUserViewModel())
}

