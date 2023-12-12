//
//  GithubUserViewModel.swift
//  GithubUserSearch
//
//  Created by Saba Gogrichiani on 12.12.23.
//

import SwiftUI
import NetSwift

class GithubUserViewModel: ObservableObject {
    @Published var user: User?
    @Published var username: String = ""
    @Published var error: String?
    @Published var isLoading: Bool = false
    
    func fetchUser(_ username: String) {
        self.isLoading = true
        let urlString = "https://api.github.com/users/\(username)"
        guard let URL = URL(string: urlString) else { return }
        
        NetworkManager.shared.fetchDecodableData(from: URL, responseType: User.self, completion: { result in
            self.isLoading = false
            switch result {
            case .success(let data):
                self.user = data
            case .failure(let error):
                self.error = error.localizedDescription
            }
        })
    }
    
    
}
