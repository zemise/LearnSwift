//
// CardView.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/13
// Copyright (c) 2023 LearnSwift. All rights reserved.
//

import SwiftUI

struct HCardView: View {
    // MARK: - Properties

    var image: String
    var title: String
    var subtitle: String

    // MARK: - Body

    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)

            VStack(alignment: .leading, spacing: 18) {
                Text(title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)

                Text(subtitle)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
            }
        }
        .frame(width: 320, height: 120)
        .background(.orange)
        .cornerRadius(10)
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
    }
}

// MARK: - Previews

struct HCardView_Previews: PreviewProvider {
    static var previews: some View {
        HCardView(image: "gear", title: "Swift入门课程", subtitle: "一小时极简微课，快速掌握SwiftUI语法核心知识点")
    }
}
