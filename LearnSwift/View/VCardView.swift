//
// VCardView.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/13
// Copyright (c) 2023 LearnSwift. All rights reserved.
//

import SwiftUI

struct VCardView: View {
    // MARK: - Properties

    var title: String
    var subline: String
    var image: String

    // MARK: - Body

    var body: some View {
        VStack(alignment: .center, spacing: 130) {
            VStack(alignment: .center, spacing: 18) {
                Text(title)
                    .padding(.vertical, 5)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .font(.title)

                Text(subline)
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal, 30)
            .multilineTextAlignment(.leading)

            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
        }
        .frame(width: 260, height: 380)
        .background(.orange)
        .cornerRadius(25)
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
    }
}

// MARK: - Previews

struct VCardView_Previews: PreviewProvider {
    static var previews: some View {
        VCardView(title: "Swift官方教程中文版", subline: "一小时极简微课，快速掌握SwiftUI语法核心知识点", image: "gear")
    }
}
