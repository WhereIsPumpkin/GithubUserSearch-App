//
//  StringExtension.swift
//  GithubUserSearch
//
//  Created by Saba Gogrichiani on 12.12.23.
//

import Foundation

extension String {
    func formatDate() -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        if let date = dateFormatter.date(from: self) {
            let outputFormatter = DateFormatter()
            outputFormatter.dateFormat = "dd MMM yyyy"
            return outputFormatter.string(from: date)
        } else {
            return nil
        }
    }
}
