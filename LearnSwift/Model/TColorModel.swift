//
// ColorModel.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/14
// Copyright (c) 2023 LearnSwift. All rights reserved.
//

import SwiftUI

// MARK: - TColor Datas Model

struct TColor: Identifiable {
    var id = UUID()
    var color: Color
    var name: String
}
