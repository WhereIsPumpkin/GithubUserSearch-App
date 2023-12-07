//
//  GithubUserSearchApp.swift
//  GithubUserSearch
//
//  Created by Saba Gogrichiani on 07.12.23.
//

import SwiftUI

@main
struct GithubUserSearchApp: App {
    
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some Scene {
        WindowGroup {
            GithubUserSearchView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
