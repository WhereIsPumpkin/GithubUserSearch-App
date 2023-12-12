//
//  ErrorView.swift
//  GithubUserSearch
//
//  Created by Saba Gogrichiani on 12.12.23.
//

import SwiftUI

struct ErrorView: View {
    var text: String
    
    var body: some View {
        VStack(spacing: 50) {
            Spacer()
            TextView(text: text, fontName: "Space Mono", fontSize: 20, color: Color("bodyTitle"))
                .padding(.horizontal, 20)
                .multilineTextAlignment(.center)
            
            Image("emptyPlaceholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
            
            Spacer()
        }
    }
}

#Preview {
    ErrorView(text: "Test Test Test Test Test")
}
