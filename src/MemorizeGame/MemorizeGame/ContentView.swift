//
//  ContentView.swift
//  MemorizeGame
//
//  Created by 夏凌晨 on 2020/10/28.
//  Copyright © 2020 xgqfrms. All rights reserved.
//

import SwiftUI

// ✅ some View，返回任意类型的 View, 自动推断 View 类型
struct ContentView: View {
  var body: some View {
    HStack {
      ForEach(0..<4) { index in
        // print("index \(index)")
        CardView(isFaceUp: (index % 2 == 0))
      }
    }
//    HStack {
//      CardView(isFaceUp: true)
//      CardView(isFaceUp: false)
//      CardView(isFaceUp: true)
//      CardView(isFaceUp: false)
//    }
  }
}


struct CardView: View {
  // var isFaceUp: Bool
  var isFaceUp: Bool = false
  var body: some View {
    ZStack {
      if isFaceUp {
        RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
        RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
        Text("👻").font(.largeTitle)
      } else {
        RoundedRectangle(cornerRadius: 10.0).fill(Color.orange)
      }
    }.padding()
  }
}































//  PreviewProvider 仅用于预览，代码在项目中没有实际的意义
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
