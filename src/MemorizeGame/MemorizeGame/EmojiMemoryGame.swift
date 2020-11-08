//
//  EmojiMemoryGame.swift
//  MemorizeGame
//
//  Created by 夏凌晨 on 2020/11/2.
//  Copyright © 2020 xgqfrms. All rights reserved.
//

// ViewModel
//import Foundation

import SwiftUI


func createCardContent(pairIndex: Int) -> String {
   return "👻"
}

class EmojiMemoryGame {
  // 初始化 ？构造函数
  // internal init(model: MemoryGame<String>) {
  //   self.model = model
  // }
  // private(set) 对内可修改, 对外可见
  // private(set) var model: MemoryGame<String>
  private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame();
  // 静态方法, 类名调用
  static func createMemoryGame() -> MemoryGame<String> {
    // let emojis: Array<String> = ["💩", "👻", "🚀", "🐥", "🎃"]
    let emojis = ["💩", "👻", "🚀", "🐥", "🎃"]
    return MemoryGame<String>(numberOfPairsOfCards: emojis.count) {pairIndex in
     return emojis[pairIndex]
    }
    // return MemoryGame<String>(numberOfPairsOfCards: 2) {pairIndex in emojis[pairIndex]};
  }
    // _ 参数名没有使用，占位符
    // MemoryGame<String>(numberOfPairsOfCards: 2) {_ in "👻"}
    // last argument
    // MemoryGame<String>(numberOfPairsOfCards: 2) {pairIndex in "👻"}
    // 类型推断
    // MemoryGame<String>(numberOfPairsOfCards: 2, cardContentFactory: {pairIndex in "👻"})
    // inline function
    // MemoryGame<String>(numberOfPairsOfCards: 2, cardContentFactory: {(pairIndex: Int) -> String in return "👻"})
    // MemoryGame<String>(numberOfPairsOfCards: 2, cardContentFactory: createCardContent)
    // MemoryGame<String>(numberOfPairsOfCards: <#T##Int#>, cardContentFactory: <#T##(Int) -> String#>)
  // private var model: MemoryGame<String> = MemoryGame<String>(cards: Array<MemoryGame<String>.Card>)
  // private var model: MemoryGame<String> = MemoryGame<String>(cards: <#T##Array<MemoryGame<String>.Card>#>)
  // private(set) var model: MemoryGame<String>
  // MARK: - Aceess to Model
  var cards: Array<MemoryGame<String>.Card> {
    // 单行返回, return 可省略!
    model.cards
    // return model.cards
  }
  // MARK: - Intents
  func choose(card: MemoryGame<String>.Card) {
    // label
    model.choose(card: card)
  }
}

struct EmojiMemoryGame_Previews: PreviewProvider {
  static var previews: some View {
    /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
  }
}
