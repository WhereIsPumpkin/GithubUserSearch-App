//
//  TextView.swift
//  GithubUserSearch
//
//  Created by Saba Gogrichiani on 11.12.23.
//

import SwiftUI

struct TextView: View {
    var text: String
    var fontName: String
    var fontSize: CGFloat
    var color: Color
    var weight: Font.Weight?

    var body: some View {
        Text(text)
            .font(Font.custom(fontName, size: fontSize).weight(weight ?? .regular))
            .foregroundColor(color)
    }
}

