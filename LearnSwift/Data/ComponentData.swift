//
// CompotentData.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/14
// Copyright (c) 2023 LearnSwift. All rights reserved.
//

// MARK: - Component Data

import Foundation
import SwiftUI

let componentDatas: [component] = [
    component(label: "按钮 Buttons", image: "capsule", view: AnyView(ButtonsView())),
    component(label: "颜色 Colors", image: "paintpalette", view: AnyView(ColorsView())),
    component(label: "控件 Controls", image: "slider.horizontal.3", view: AnyView(ControlView())),
    component(label: "字体 Fonts", image: "textformat", view: AnyView(FontView())),
    component(label: "触觉 Haptics", image: "waveform", view: AnyView(ButtonsView())),
    component(label: "手势 Gestures", image: "hand.tap", view: AnyView(ButtonsView())),
    component(label: "图片 Images", image: "photo", view: AnyView(ButtonsView())),
    component(label: "指示 Indicators", image: "cursorarrow.click.badge.clock", view: AnyView(ButtonsView())),
    component(label: "形状 Shapes", image: "square.on.circle", view: AnyView(ButtonsView())),
    component(label: "文本 Text", image: "text.justifyleft", view: AnyView(ButtonsView())),
    component(label: "地图 Maps", image: "map", view: AnyView(ButtonsView())),
]
