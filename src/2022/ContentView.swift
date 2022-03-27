//
//  ContentView.swift
//  Memorize
//
//  Created by 夏凌晨 on 2022/3/27.
//

// 只有 UI 组件才需要导入 SwiftUI
import SwiftUI

// 类，封装变量，面向对象编程 OOP ✅

// 结构体，封装变量，函数式编程 FP ✅
// ContentView 是 View 组件名称，可以自定义
//struct MyContentView: View {
//  // some 某种 View, View 是一个函数;
//  // 当 return Text("Hello, SwiftUI!"); 时候，这里 some View 等价于 Text 结构体
//  var body: some View {
//    // 返回值是 Text, 隐式返回
//    Text("Hello, SwiftUI!")
//      .fontWeight(.bold)
//      .foregroundColor(Color.green)
//      .padding(.all);
//    // return Text("Hello, SwiftUI!").padding();
//    // return Text("Hello, SwiftUI!");
//  };
//  var num: Int = 2022;
//  var str: String = "string";
//  // let
//  // const
//}


//struct MyContentView: View {
//  var body: some View {
//    // 圆角矩形，label 是 key
//    return RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//      .stroke(lineWidth: 3)
//      .padding(.horizontal)
//      .foregroundColor(/*@START_MENU_TOKEN@*/Color.yellow/*@END_MENU_TOKEN@*/);
//    // RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill().padding(.horizontal);
//  };
//}


//struct MyContentView: View {
//  var body: some View {
//    // zStack 垂直堆叠 UI
//    return ZStack(content: {
//      RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//        .stroke(lineWidth: 3)
//        .padding(.horizontal)
//        .foregroundColor(/*@START_MENU_TOKEN@*/Color.yellow/*@END_MENU_TOKEN@*/);
//      Text("Hello, SwiftUI!")
//        .fontWeight(.bold)
//        .foregroundColor(Color.green)
//        .padding(.all);
//    })
//    .frame(width: 100.0, height: 200.0)
//  };
//}


//struct MyContentView: View {
//  var body: some View {
//    return ZStack(content: {
//      RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//        .stroke(lineWidth: 3);
//      Text("Hello, SwiftUI!")
//        .fontWeight(.bold)
//        // 内层优先级高，覆盖外层
//        .foregroundColor(Color.green);
//    })
//    .frame(width: 100.0, height: 200.0)
//    // 代码复用，外层传递到内层
//    .padding(.horizontal)
//    .foregroundColor(/*@START_MENU_TOKEN@*/Color.yellow/*@END_MENU_TOKEN@*/)
//  };
//}


// clear code, 简写
//struct MyContentView: View {
//  var body: some View {
//    // 不需要显试的 return
//    ZStack(content: {
//      RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//        // 不需要显试的 ;
//        .stroke(lineWidth: 3)
//      Text("Hello, SwiftUI!")
//        .fontWeight(.bold)
//        // Color.green => .green
//        .foregroundColor(.green)
//    })
//    .frame(width: 100.0, height: 200.0)
//    .padding(.horizontal)
//    .foregroundColor(.yellow)
//  };
//}


//struct MyContentView: View {
//  var body: some View {
//    //ZStack(alignment: .center, content: {
//    //  RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//    //    .stroke(lineWidth: 3)
//    //  Text("Hello, SwiftUI!")
//    //    .fontWeight(.bold)
//    //})
//    //.frame(width: 100.0, height: 200.0)
//    //.padding(.horizontal)
//    //.foregroundColor(.yellow)
//    // ZStack 最后一个参数 content，省略可以去掉一层 ()
//    ZStack(alignment: .center) {
//      RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//        .stroke(lineWidth: 3)
//      Text("Hello, SwiftUI!")
//        .fontWeight(.bold)
//    }
//    .frame(width: 100.0, height: 200.0)
//    .padding(.horizontal)
//    .foregroundColor(.yellow)
//  };
//}


struct MyContentView: View {
  var body: some View {
    //ZStack(alignment: .center, content: {
    //  RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
    //    .stroke(lineWidth: 3)
    //  Text("Hello, SwiftUI!")
    //    .fontWeight(.bold)
    //})
    //.frame(width: 100.0, height: 200.0)
    //.padding(.horizontal)
    //.foregroundColor(.yellow)
    // ZStack 参数都省略可以去掉一层 (), 类似 View 函数
    ZStack {
      RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
        .stroke(lineWidth: 3)
      Text("👻")
        .fontWeight(.bold)
        .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
    }
    .frame(width: 100.0, height: 200.0)
    .padding(.horizontal)
    .foregroundColor(.red)
  };
}














// 仅用于 resume 预览，不是真实有用的业务代码，可忽略
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    MyContentView()
  }
}
//struct MyContentView_Previews: PreviewProvider {
//  static var previews: some View {
//    MyContentView()
//  }
//}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//      ContentView()
//    }
//}
