//
// TitleView.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/13
// Copyright (c) 2023 LearnSwift. All rights reserved.
//

import SwiftUI

struct TitleView: View {
    // MARK: - Properties

    var title: String
    var subtitle: String

    // MARK: - Body

    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Text(subtitle)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

// MARK: - Previews

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Swift微课", subtitle: "一小时快速掌握Swift")
            .previewLayout(.sizeThatFits)
    }
}
