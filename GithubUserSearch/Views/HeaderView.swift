//
//  HeaderView.swift
//  GithubUserSearch
//
//  Created by Saba Gogrichiani on 07.12.23.
//

import SwiftUI

struct HeaderView: View {

    @Binding var isDarkMode: Bool
    
    var body: some View {
        HStack {
            
            Text("devfinder")
                .font(.custom("Space Mono", size: 28).weight(.bold))
                .foregroundStyle(Color("title"))
            
            Spacer()
            
            Button(action: {
                isDarkMode.toggle()
            }, label: {
                HStack {
                    Text("DARK")
                        .font(
                            Font.custom("Space Mono", size: 14)
                                .weight(.bold)
                        )
                        .kerning(2.5)
                        .multilineTextAlignment(.trailing)
                        .foregroundStyle(Color("body"))
                    Image(systemName: isDarkMode ? "sun.max.fill" : "moon.fill")
                        .foregroundStyle(Color("body"))
                }
            })
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeaderView(isDarkMode: .constant(false))
}
