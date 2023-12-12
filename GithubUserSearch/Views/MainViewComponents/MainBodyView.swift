//
//  MainBodyView.swift
//  GithubUserSearch
//
//  Created by Saba Gogrichiani on 11.12.23.
//

import SwiftUI

struct MainBodyView: View {
    
    @ObservedObject var viewModel: GithubUserViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            
            HStack(spacing: 20) {
                AsyncImage(url: URL(string: viewModel.user?.profilePic ?? "")) { image in
                    image.resizable()
                } placeholder: {
                    Image("profilePlaceholder")
                        .resizable()
                }
                .frame(width: 70, height: 70)
                .clipShape(Circle())
                
                
                VStack(alignment: .leading) {
                    TextView(text: viewModel.user?.name ?? "Octocat", fontName: "Space Mono", fontSize: 16, color: Color("bodyTitle"), weight: .bold)
                    
                    
                    TextView(text: "@\(viewModel.user?.login ?? "Octocat")", fontName: "Space Mono", fontSize: 13, color: Color(red: 0, green: 0.47, blue: 1))
                    
                    TextView(text: "Joined \(viewModel.user?.joinDate.formatDate() ?? "Not Available")", fontName: "Space Mono", fontSize: 13, color: Color("dateColor"))
                }
                
                Spacer()
            }
            
            TextView(text: viewModel.user?.bio ?? "No bio found", fontName: "Space Mono", fontSize: 13, color: Color("body"))
            
            HStack {
                VStackView(title: "Repos", value: "\(viewModel.user?.repoCount ?? 0)")
                Spacer()
                VStackView(title: "Followers", value: "\(viewModel.user?.followers ?? 0)")
                Spacer()
                VStackView(title: "Following", value: "\(viewModel.user?.following ?? 0)")
            }
            .padding(.horizontal, 35)
            .frame(height: 85)
            .background(Color("background"))
            .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 20) {
                AboutInfoTextView(icon: "location.fill", text: "\(viewModel.user?.location ?? "No Location")", textColor: ((viewModel.user?.location) != nil) ? Color("body") : .gray)
                
                AboutInfoTextView(icon: "link", text: "\(viewModel.user?.githubLink ?? "https://github.blog")", textColor: ((viewModel.user?.githubLink) != nil) ? Color("body") : .gray)
                
                AboutInfoTextView(icon: "person.fill", text: "@\(viewModel.user?.socialUsername ?? "No Social Media Link Found")", textColor: ((viewModel.user?.socialUsername) != nil) ? Color("body") : .gray)
                
                AboutInfoTextView(icon: "building.2", text: "@\(viewModel.user?.company ?? "No Company Name Found")", textColor: ((viewModel.user?.company) != nil) ? Color("body") : .gray)

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
    MainBodyView(viewModel: GithubUserViewModel())
}
