//
// FontView.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/16
// Copyright (c) 2023 LearnSwift. All rights reserved.
//

import SwiftUI

struct fontModel: Identifiable {
    var name: String
    var type: Font
    var description: String

    var id: String { name }
}

struct FontView: View {
    // MARK: - Properties

    let FontsList: [fontModel] = [
        .init(name: "largeTitle", type: .largeTitle, description: "大标题文本样式的字体"),
        .init(name: "title", type: .title2, description: "标题文本样式的字体"),
        .init(name: "title", type: .title3, description: "二级分层标题创建的字体"),
        .init(name: "headline", type: .headline, description: "三级分层标创建的字体"),
        .init(name: "subheadline", type: .subheadline, description: "副标题文本样式的字体"),
        .init(name: "body", type: .body, description: "正文文本样式的字体"),
        .init(name: "callout", type: .callout, description: "标注文本样式的字体"),
        .init(name: "lcaption", type: .caption, description: "标题文本样式的字体"),
        .init(name: "caption2", type: .caption2, description: "使用备用标题标题文本样式的字体"),
        .init(name: "footnote", type: .footnote, description: "脚注文本样式的字体"),
    ]

    // MARK: - Body

    var body: some View {
        Form {
            ForEach(FontsList) { font in
                Section(footer: Text(font.description)) {
                    Text(font.name)
                        .font(font.type)
                }
            }
        }
        .navigationTitle("字体 Fonts")
    }
}

// MARK: - Previews

struct FontView_Previews: PreviewProvider {
    static var previews: some View {
        FontView()
    }
}
