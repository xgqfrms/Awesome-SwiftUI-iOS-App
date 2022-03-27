//
//  MemorizeApp.swift
//  Memorize
//
//  Created by 夏凌晨 on 2022/3/27.
//

import SwiftUI

/*
 
 Assets.xcassets 是资源文件夹，
 可以拖拽 icons 等资源放到里面
 
 Info.plist 是 App 配置文件，
 点击 App 文件树最外层的根节点（Memorize.xcodeproj），可以以可视化 UI 的方式查看和修改
 
 */

// main 是 App 入口文件
@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            // App 视图组件
            // ContentView()
            MyContentView()
        }
    }
}
