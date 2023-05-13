//
// PageSalesView.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/14
// Copyright (c) 2023 LearnSwift. All rights reserved.
//


import SwiftUI

struct PageSalesView: View {
    // MARK: - Properties


    // MARK: - Body
    var body: some View {
        TabView{
            
            NavigationView{
                Text("菜单页面")
                    .font(.largeTitle)
            }
            .tabItem{
                Label("Menu",systemImage: "fork.knife")
            }
            
            
            NavigationView{
                StyleDetailsChart()
                    .navigationBarTitle("First", displayMode: .inline)
            }
            .tabItem{
                Label("Sales", systemImage: "chart.bar.doc.horizontal.fill")
            }
        }
    }
}

    // MARK: - Previews
struct PageSalesView_Previews: PreviewProvider {
    static var previews: some View {
            PageSalesView()

    }
}
