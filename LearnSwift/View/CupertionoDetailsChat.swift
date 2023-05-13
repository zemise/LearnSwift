//
// CupertionoDetailsChat.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/14
// Copyright (c) 2023 LearnSwift. All rights reserved.
//

import Charts
import SwiftUI

struct SalesSummary: Identifiable {
    let weekday: Date
    let sales: Int

    var id: Date { weekday }
}

let cupertinoData: [SalesSummary] = [
    /// Monday
    .init(weekday: date(2022, 5, 2)!, sales: 54),
    /// Tuesday
    .init(weekday: date(2022, 5, 3)!, sales: 42),
    /// Wednesday
    .init(weekday: date(2022, 5, 4)!, sales: 88),
    /// Thursday
    .init(weekday: date(2022, 5, 5)!, sales: 49),
    /// Friday
    .init(weekday: date(2022, 5, 6)!, sales: 42),
    /// Saturday
    .init(weekday: date(2022, 5, 7)!, sales: 125),
    /// Sunday
    .init(weekday: date(2022, 5, 8)!, sales: 67),
]

struct CupertionoDetailsChat: View {
    // MARK: - Properties

    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading){
            Text("Day + Location With Most Sales")
                .font(.caption)
                .foregroundColor(.secondary)
            
            Text("Sundays in San Francisco")
                .fontWeight(.bold)
                .font(.title3)
            Chart(cupertinoData) { element in
                BarMark(x: .value("Day", getWeekDay(date: element.weekday)), y: .value("Sales", element.sales))
            }
            .foregroundColor(.blue)
            .frame(width: 380, height: 320)
        }
    }
}

// MARK: - Previews

struct CupertionoDetailsChat_Previews: PreviewProvider {
    static var previews: some View {
        CupertionoDetailsChat()
    }
}
