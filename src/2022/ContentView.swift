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
//    // 不需要显式的 return
//    ZStack(content: {
//      RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//        // 不需要显式的 ;
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
//    // ZStack 参数都省略可以去掉一层 (), 类似 View 函数
//    ZStack {
//      RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//        .stroke(lineWidth: 3)
//      Text("👻")
//        .fontWeight(.bold)
//        .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
//    }
//    .frame(width: 100.0, height: 200.0)
//    .padding(.horizontal)
//    .foregroundColor(.red)
//  };
//}

//struct MyContentView: View {
//  var body: some View {
//    // 水平方向布局
//    HStack {
//      ZStack {
//        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//          .stroke(lineWidth: 3)
//        Text("👻")
//          .fontWeight(.bold)
//          .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
//      }
//      .frame(width: 100.0, height: 200.0)
//      .padding(.horizontal)
//      .foregroundColor(.red)
//      ZStack {
//        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//          .stroke(lineWidth: 3)
//        Text("👻")
//          .fontWeight(.bold)
//          .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
//      }
//      .frame(width: 100.0, height: 200.0)
//      .padding(.horizontal)
//      .foregroundColor(.red)
//    }
//  };
//}

//
//struct MyContentView: View {
//  var body: some View {
//    // 水平方向布局
//    HStack {
//      CardView()
//      CardView()
//      CardView()
//      CardView()
//    }
//    // .frame(width: 100.0, height: 200.0)
//    .padding(.horizontal)
//    .foregroundColor(.red)
//  };
//}
//
//
//struct CardView: View {
//  // 初始化: 值或函数
//  // var isFaceUp: Bool = false;
//  var isFaceUp: Bool {
//    return true;
//  };
//  var body: some View {
//    ZStack {
//      if(isFaceUp) {
//        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//          .stroke(lineWidth: 12)
//        // fill 前景色
//        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//          .fill()
//          .foregroundColor(.white)
//        Text("👻")
//          .fontWeight(.bold)
//          .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
//      } else {
//        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//          .fill()
//          .foregroundColor(.yellow)
//      }
//    }
//  };
//}


//struct MyContentView: View {
//  var body: some View {
//    HStack {
//      // 调用函数时候传参数
//      CardView(isFaceUp: true)
//      CardView(isFaceUp: false)
//      CardView(isFaceUp: true)
//      CardView(isFaceUp: false)
//    }
//    .padding(.horizontal)
//    .foregroundColor(.red)
//  };
//}
//
//
//struct CardView: View {
//  // 没有初始化值， 必须在调用函数时候传参数
//  var isFaceUp: Bool
//  var body: some View {
//    ZStack {
//      if(isFaceUp) {
//        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//          .stroke(lineWidth: 12)
//        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//          .fill()
//          .foregroundColor(.white)
//        Text("👻")
//          .fontWeight(.bold)
//          .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
//      } else {
//        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//          .fill()
//          .foregroundColor(.yellow)
//      }
//    }
//  };
//}


//struct MyContentView: View {
//  var body: some View {
//    HStack {
//      // 调用函数时候传参数, 会覆盖默认值
//      CardView()
//      CardView(isFaceUp: false)
//      CardView()
//      CardView(isFaceUp: false)
//    }
//    .padding(.horizontal)
//    .foregroundColor(.red)
//  };
//}


//struct CardView: View {
//  // 有初始化值， 在调用函数时候传参数会覆盖默认值
//  var isFaceUp: Bool = true;
//  var body: some View {
//    ZStack {
//      if(isFaceUp) {
//        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//          .stroke(lineWidth: 12)
//        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//          .fill()
//          .foregroundColor(.white)
//        Text("👻")
//          .fontWeight(.bold)
//          .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
//      } else {
//        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//          .fill()
//          .foregroundColor(.yellow)
//      }
//    }
//  };
//}

//
//struct CardView: View {
//  // 有初始化值， 在调用函数时候传参数会覆盖默认值
//  // var isFaceUp: Bool = true;
//  // 需要使用 @State 才可以修改值； SwiftUI 默认 struct 是不可变的，不可以直接修改
//  // @State public var isFaceUp: Bool = true;
//  @State var isFaceUp: Bool = true;
//  var body: some View {
//    ZStack {
//      // 使用局部作用域变量，提高代码复用率
//      // var shape = RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/);
//      // Variable 'shape' was never mutated; consider changing to 'let' constant
//      // let shape = RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/);
//      // 类型推断，不需要显式的声明
//      let shape: RoundedRectangle = RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/);
//      if(isFaceUp) {
//        shape
//          .stroke(lineWidth: 12)
//        shape
//          .fill()
//          .foregroundColor(.white)
//        Text("👻")
//          .fontWeight(.bold)
//          .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
//      } else {
//        shape
//          .fill()
//          .foregroundColor(.yellow)
//      }
//    }
//    .onTapGesture(perform: {
//      let const = 666;
//      print("perform \(const)");
//      // self !== this
//      // self.isFaceUp = !self.isFaceUp;
//      isFaceUp = !isFaceUp;
//    })
//    // 最后的一个 label 参数可以省略，简写
//    // .onTapGesture {
//    //   let const = 666;
//    //   print("perform \(const)");
//    // }
//  };
//}
//


//struct MyContentView: View {
//  // 类型推断，省略 Array Type
//  let emojis = ["😃", "🐻", "🍔", "⚽"];
//  // let emojis: [String] = ["😃", "🐻", "🍔", "⚽"];
//  // let emojis: Array<String> = ["😃", "🐻", "🍔", "⚽"];
//  var body: some View {
//    HStack {
//      // 调用函数时候传参数, 会覆盖默认值
//      CardView(content: "😃")
//      CardView(content: "🐻", isFaceUp: false)
//      CardView(content: "🍔")
//      CardView(content: "⚽",isFaceUp: false)
//    }
//    .padding(.horizontal)
//    .foregroundColor(.red)
//  };
//}


//struct MyContentView: View {
//  // 类型推断，省略 Array Type
//  let emojis = ["😃", "🐻", "🍔", "⚽"];
//  var body: some View {
//    HStack {
//      // 调用函数时候传参数, 会覆盖默认值
//      CardView(content: emojis[0])
//      CardView(content: emojis[1], isFaceUp: false)
//      CardView(content: emojis[2])
//      CardView(content: emojis[3],isFaceUp: false)
//    }
//    .padding(.horizontal)
//    .foregroundColor(.red)
//  };
//}


struct MyContentView: View {
  // 类型推断，省略 Array Type
  let emojis = ["😃", "🐻", "🍔", "⚽","🦍","🦊","🦌","🦏","🦇","🦅","🦆","🦉","🦎","🦈","🦐","🦑","🦋","🥀","🦓","🦒","🦔","🦕","🦖","🦗","🐉","🐲","🌵","🎄","🌲","🌳","🌴","🌱","🌿","☘","🍀","🎍","🎋","🍃","🍂","🍁","🌾","🌺","🌻","🌹","🌷","🌼","🌸","💐","🍄","🌰","🎃","🐚"];
  var body: some View {
    HStack {
      // 调用函数时候传参数, 会覆盖默认值
      CardView(content: emojis[0])
      CardView(content: emojis[1], isFaceUp: false)
      CardView(content: emojis[2])
      CardView(content: emojis[3],isFaceUp: false)
    }
    .padding(.horizontal)
    .foregroundColor(.red)
  };
}



struct CardView: View {
  var content: String = "";
  @State var isFaceUp: Bool = true;
  var body: some View {
    ZStack {
      let shape: RoundedRectangle = RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/);
      if(isFaceUp) {
        shape
          .stroke(lineWidth: 3)
        shape
          .fill()
          .foregroundColor(.white)
        Text(content)
          .fontWeight(.bold)
          .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
      } else {
        shape
          .fill()
          .foregroundColor(.yellow)
      }
    }
    .onTapGesture {
      let const = 666;
      print("perform \(const)");
      isFaceUp = !isFaceUp;
    }
  };
}










// 仅用于 resume 预览，不是真实有用的业务代码，可忽略
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    // 开启多个预览
    MyContentView()
      // dark mode 暗黑模式
      .preferredColorScheme(.dark)
    MyContentView()
      // light mode 默认模式
      .preferredColorScheme(.light)
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
