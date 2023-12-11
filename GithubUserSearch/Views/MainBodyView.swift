//
//  MainBodyView.swift
//  GithubUserSearch
//
//  Created by Saba Gogrichiani on 11.12.23.
//

import SwiftUI

struct MainBodyView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            
            HStack(spacing: 20) {
                Image("profilePlaceholder")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    TextView(text: "The Octocat", fontName: "Space Mono", fontSize: 16, color: Color("bodyTitle"), weight: .bold)
                    
                    TextView(text: "@octocat", fontName: "Space Mono", fontSize: 13, color: Color(red: 0, green: 0.47, blue: 1))
                    
                    TextView(text: "Joined 25 Jan 2011", fontName: "Space Mono", fontSize: 13, color: Color("dateColor"))
                }
                
                Spacer()
            }
            
            TextView(text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros.", fontName: "Space Mono", fontSize: 13, color: Color("body"))
            
            HStack {
                VStackView(title: "Repos", value: "8")
                Spacer()
                VStackView(title: "Followers", value: "3938")
                Spacer()
                VStackView(title: "Following", value: "9")
            }
            .padding(.horizontal, 35)
            .frame(height: 85)
            .background(Color("background"))
            .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 20) {
                AboutInfoTextView(icon: "location.fill", text: "San Francisco")
                AboutInfoTextView(icon: "link", text: "https://github.blog")
                AboutInfoTextView(icon: "person.fill", text: "@Man")
                AboutInfoTextView(icon: "building.2", text: "@github")
            }
            
            Spacer()
        }
        .frame(maxHeight: 490)
        .padding(.horizontal, 25)
        .padding(.top, 35)
        .background(Color("viewBody"))
        .cornerRadius(15)
    }
}

#Preview {
    MainBodyView()
}
