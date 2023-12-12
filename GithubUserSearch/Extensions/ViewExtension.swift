//
//  ViewExtension.swift
//  GithubUserSearch
//
//  Created by Saba Gogrichiani on 12.12.23.
//

import SwiftUI

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
