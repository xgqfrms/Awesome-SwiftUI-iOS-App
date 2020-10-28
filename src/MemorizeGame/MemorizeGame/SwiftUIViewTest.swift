//
//  SwiftUIViewTest.swift
//  MemorizeGame
//
//  Created by 夏凌晨 on 2020/10/28.
//  Copyright © 2020 xgqfrms. All rights reserved.
//

import SwiftUI

// ✅ some View，返回任意类型的 View, 自动推断 View 类型
//struct SwiftUIViewTest: View {
//  var body: some View {
//    Text("Hello, World!")
//  }
//}

// 👎 Text 返回 Text 类型的 View, 显示指定返回的 View 类型
struct SwiftUIViewTest: View {
  var body: Text {
    // Text("Hello, SwiftUI!")
    // return 可以省略
    return Text("Hello, SwiftUI!")
  }
}







//  PreviewProvider 仅用于预览，代码在项目中没有实际的意义
struct SwiftUIViewTest_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIViewTest()
  }
}
