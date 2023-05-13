//
// FirstPageView.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/13
// Copyright (c) 2023 LearnSwift. All rights reserved.
//

import SwiftUI

struct PageFirstView: View {
    // MARK: - Properties

    private var hCardData = HCardDatas

    // MARK: - Body

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            // MARK: - 第一部分

            VStack(alignment: .leading, spacing: 15) {
                TitleView(title: "Swift微课", subtitle: "一小时极快速掌握Swift")

                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                    HCardView(image: "gear", title: "Swift入门课程", subtitle: "一小时极简微课，快速掌握Swift语法核心知识点")
                }

                TitleView(title: "SwiftUI", subtitle: "了解SwiftUI常用控件")

                NavigationLink(destination: SwiftUIView()) {
                    HCardView(image: "gear", title: "SwiftUI控件演示", subtitle: "SwiftUI提供用于声明用户界面的视图、控件和布局结构")
                }

                TitleView(title: "教程", subtitle: "4门课程由浅入深")
            }

            // MARK: - 第二部分

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 30) {
                    ForEach(hCardData) { item in
                        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                            VCardView(title: item.title, subline: item.headline, image: item.image)
                        }
                    }
                }
                .offset(x: 40)
            }
        }
    }
}

// MARK: - Previews

struct PageFirstView_Previews: PreviewProvider {
    static var previews: some View {
        PageFirstView()
    }
}
