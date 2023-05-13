//
// ControlView.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/15
// Copyright (c) 2023 LearnSwift. All rights reserved.
//

import SwiftUI

struct ControlView: View {
    // MARK: - Properties

    @State private var selectedFlavor = "香草"

    let foodFlavor: [String] = ["巧克力", "香草", "草莓"]
    
    @State private var selectedColor = Color.purple

    // MARK: - Body

    var body: some View {
        Form {
            // MARK: - 第一部分 切换按钮

            Section(footer: Text("在开启和关闭状态之间切换的控件，iOS上的默认样式是开关，MacOS上的默认样式则是复选框").padding(0)) {
                Text("切换按钮 Toggle")
                    .fontWeight(.heavy)
                    .font(Font.body.bold())
                    .fontDesign(.serif)
                    .foregroundColor(.black)

                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/ .constant(true)/*@END_MENU_TOKEN@*/) {
                    Text("响铃时震动")
                }

                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/ .constant(true)/*@END_MENU_TOKEN@*/) {
                    Text("静音时震动")
                }
            }

            // MARK: - 第二部分 选择器

            Section(footer: Text("用于一组互斥值中进行选择的控件，iOS上默认样式通常是轮子(在像这样的分组列表中，它的样式类似于导航连接); MacOS上的默认样式是弹出按钮").padding(0)) {
                Text("选择器 Picker")
                    .fontWeight(.heavy)
                    .font(Font.body.bold())
                    .fontDesign(.serif)
                    .foregroundColor(.black)

                Picker(selection: $selectedFlavor, label: Text("味道")) {
                    ForEach(foodFlavor, id: \.self) { food in
                        Text(food)
                    }
                }

                VStack {
                    Picker("Select a flavor", selection: $selectedFlavor) {
                        ForEach(foodFlavor, id: \.self) { color in
                            Text(color)
                        }
                    }
                    .pickerStyle(.segmented)
                 
                    Picker("Select a flavor", selection: $selectedFlavor) {
                        ForEach(foodFlavor, id: \.self) { color in
                            Text(color)
                        }
                    }
                    .pickerStyle(.wheel)
                }
            }
            
            // MARK: - 第三部分 日期选择器

            Section(footer: Text("用于选择日期/时间的控件").padding(0)) {
                Text("日期选择器 DatePicker")
                    .fontWeight(.heavy)
                    .font(Font.body.bold())
                    .fontDesign(.serif)
                    .foregroundColor(.black)
                
                DatePicker(
                    "生日",
                    selection: .constant(Date()),
                    displayedComponents: [.date]
                )
                
                DatePicker(selection: /*@START_MENU_TOKEN@*/ .constant(Date())/*@END_MENU_TOKEN@*/, label: { Text("出生时刻") })
                
                DatePicker(
                    "闹钟",
                    selection: .constant(Date()),
                    displayedComponents: [.hourAndMinute]
                )
            }
            
            // MARK: - 第四部分 颜色选择器

            Section(footer: Text("用于从系统颜色选择器UI中选择颜色的控件").padding(0)) {
                Text("选色器 ColorPicker")
                    .fontWeight(.heavy)
                    .font(Font.body.bold())
                    .fontDesign(.serif)
                    .foregroundColor(.black)
                
                ColorPicker("颜色", selection: $selectedColor)
            }
            
            // MARK: - 第五部分 滑块

            Section(footer: Text("用于从有界线范围值中选择值的控件。他可以连续滑动，也可以按固定增量对齐").padding(0)) {
                Text("滑块 ")
                    .fontWeight(.heavy)
                    .font(Font.body.bold())
                    .fontDesign(.serif)
                    .foregroundColor(.black)
               
                Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/ .constant(10)/*@END_MENU_TOKEN@*/)
            }
        }
        .navigationTitle("控件 Controls")
    }
}

// MARK: - Previews

struct ControlView_Previews: PreviewProvider {
    static var previews: some View {
        ControlView()
    }
}
