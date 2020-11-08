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
//    return Text("Hello, SwiftUI!").font(.title)
    return Text("Hello, SwiftUI!").font(Font.title).foregroundColor(Color.pink)
    // Option + click === open document tips
  }
}



/*


 public static let clear: Color

 public static let black: Color

 public static let white: Color

 public static let gray: Color

 public static let red: Color

 public static let green: Color

 public static let blue: Color

 public static let orange: Color

 public static let yellow: Color

 public static let pink: Color

 public static let purple: Color

 public static let primary: Color

 public static let secondary: Color


 */





//  PreviewProvider 仅用于预览，代码在项目中没有实际的意义
struct SwiftUIViewTest_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIViewTest()
  }
}
