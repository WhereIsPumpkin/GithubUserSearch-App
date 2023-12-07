//
//  ContentView.swift
//  GithubUserSearch
//
//  Created by Saba Gogrichiani on 07.12.23.
//

import SwiftUI

struct GithubUserSearchView: View {
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            VStack {
                HeaderView()
                Spacer()
            }
            .padding(.horizontal, 24)
        }
    }
}

#Preview {
    GithubUserSearchView()
}
