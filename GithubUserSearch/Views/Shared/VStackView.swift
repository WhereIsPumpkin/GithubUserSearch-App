//
//  VStackView.swift
//  GithubUserSearch
//
//  Created by Saba Gogrichiani on 11.12.23.
//

import SwiftUI

struct VStackView: View {
    var title: String
    var value: String
    
    var body: some View {
        VStack(spacing: 6) {
            TextView(text: title, fontName: "Space Mono", fontSize: 11, color: Color("body"))
            TextView(text: value, fontName: "Space Mono", fontSize: 16, color: Color("bodyTitle"), weight: .bold)
        }
    }
}

#Preview {
    VStackView(title: "Repos", value: "50")
}
