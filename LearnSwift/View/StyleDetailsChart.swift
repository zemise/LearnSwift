//
// ChartView.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/14
// Copyright (c) 2023 LearnSwift. All rights reserved.
//

import Charts
import SwiftUI

struct Pancakes: Identifiable {
    let name: String
    let sales: Int

    var id: String { name }
}

let sales: [Pancakes] = [
    .init(name: "Cachapa", sales: 916),
    .init(name: "Injera", sales: 850),
    .init(name: "Crepe", sales: 802),
    .init(name: "Jian Bing", sales: 763),
    .init(name: "Dosa", sales: 654),
    .init(name: "American", sales: 618),
]

struct StyleDetailsChart: View {
    // MARK: - Properties

    // MARK: - Body

    var body: some View {
        Chart {
            ForEach(sales) { element in
                BarMark(
                    x: .value("Sales", element.sales),
                    y: .value("name", element.name)
                )
                .foregroundStyle(.blue)
            }
        }
        .frame(width: 360, height: 360)
    }
}

// MARK: - Previews

struct StyleDetailsChart_Previews: PreviewProvider {
    static var previews: some View {
        StyleDetailsChart()
    }
}
