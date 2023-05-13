//
// CompotentModel.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/14
// Copyright (c) 2023 LearnSwift. All rights reserved.
//

import Foundation
import SwiftUI

// MARK: - Component Datas Model

// 此处采用了泛型
struct component<T: View>: Identifiable {
    var id = UUID()
    var label: String
    var image: String
    var view: T
}
