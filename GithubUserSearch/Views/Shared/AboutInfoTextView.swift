//
//  AboutInfoText.swift
//  GithubUserSearch
//
//  Created by Saba Gogrichiani on 11.12.23.
//

import SwiftUI

struct AboutInfoTextView: View {
    var icon: String
    var text: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundStyle(Color("body"))
            
            TextView(text: text, fontName: "Space Mono", fontSize: 14, color: Color("body"))
        }
    }
}

#Preview {
    AboutInfoTextView(icon: "location.fill", text: "San Francisco")
}
