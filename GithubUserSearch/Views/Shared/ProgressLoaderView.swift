//
//  ProgressLoaderView.swift
//  GithubUserSearch
//
//  Created by Saba Gogrichiani on 12.12.23.
//

import SwiftUI

struct ProgressLoaderView: View {
    var body: some View {
        Spacer()
        ProgressView()
            .scaleEffect(3)
        Spacer()
    }
}

#Preview {
    ProgressLoaderView()
}
