//
//  HeaderView.swift
//  GithubUserSearch
//
//  Created by Saba Gogrichiani on 07.12.23.
//

import SwiftUI

struct HeaderView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        HStack {
            
            Text("devfinder")
                .font(.custom("Space Mono", size: 28).weight(.bold))
                .foregroundStyle(Color("title"))
            
            Spacer()
            
            HStack {
                Text("DARK")
                    .font(
                        Font.custom("Space Mono", size: 14)
                            .weight(.bold)
                    )
                    .kerning(2.5)
                    .multilineTextAlignment(.trailing)
                    .foregroundStyle(Color("body"))
                Image(systemName: colorScheme == .dark ? "sun.max.fill" : "moon.fill")
                    .foregroundStyle(Color("body"))
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeaderView()
}
