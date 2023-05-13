//
// ColorsView.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/14
// Copyright (c) 2023 LearnSwift. All rights reserved.
//

import SwiftUI

struct ColorsView: View {
    // MARK: - Properties

    private var tColor = TColorDatas

    // MARK: - Body

    var body: some View {
        Form {
            ForEach(tColor) { item in
                Label(title: { Text(item.name) },
                      icon: { Image(systemName: "square.fill").foregroundColor(item.color)
                          .frame(width: 15, height: 15)
                          .border(Color.black, width: 1)
                          // 两种方式可以实现图片边框
                          // .overlay {Rectangle()
                          // .stroke(Color.black, lineWidth: 1)}
                      })
            }
        }

        .navigationTitle("颜色 Colors")
    }
}

// MARK: - Previews

struct ColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView()
    }
}
