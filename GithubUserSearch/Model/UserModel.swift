//
//  UserModel.swift
//  GithubUserSearch
//
//  Created by Saba Gogrichiani on 12.12.23.
//

import Foundation

struct User: Decodable {
    let name: String?
    let login: String
    let joinDate: String
    let bio: String?
    let followers: Int
    let following: Int
    let repoCount: Int
    let socialUsername: String?
    let location: String?
    let company: String?
    let githubLink: String
    let profilePic: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case login
        case bio
        case followers
        case following
        case repoCount = "public_repos"
        case joinDate = "created_at"
        case socialUsername = "twitter_username"
        case location
        case company
        case githubLink = "html_url"
        case profilePic = "avatar_url"
    }
}





