//
// SwiftUIView.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/13
// Copyright (c) 2023 LearnSwift. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    // MARK: - Properties
    private var component = componentDatas

    // MARK: - Body

    var body: some View {
        Form{
            Section{
                ForEach(component){item in
                    NavigationLink(destination: item.view) {
                        Label(item.label, systemImage: item.image)
                    }
                }
            }
            .padding(8)
        }
        .navigationTitle("UI控件")

    }
}

// MARK: - Previews

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
