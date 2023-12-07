//
//  ContentView.swift
//  GithubUserSearch
//
//  Created by Saba Gogrichiani on 07.12.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("devfinder")
                .font(
                    Font.custom("Space Mono", size: 26)
                        .weight(.bold)
                )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
