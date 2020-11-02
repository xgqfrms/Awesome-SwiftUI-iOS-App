//
//  EmojiMemorizeGame.swift
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

class EmojiMemorizeGame {
  // 初始化 ？构造函数
  // internal init(model: MemorizeGame<String>) {
  //   self.model = model
  // }
  // private(set) 对内可修改, 对外可见
  // private(set) var model: MemorizeGame<String>
  private var model: MemorizeGame<String> =
    // inline function
    MemorizeGame<String>(numberOfPairsOfCards: 2, cardContentFactory: {(pairIndex: Int) -> String in return "👻"})
    // MemorizeGame<String>(numberOfPairsOfCards: 2, cardContentFactory: createCardContent)
    // MemorizeGame<String>(numberOfPairsOfCards: <#T##Int#>, cardContentFactory: <#T##(Int) -> String#>)
  // private var model: MemorizeGame<String> = MemorizeGame<String>(cards: Array<MemorizeGame<String>.Card>)
  // private var model: MemorizeGame<String> = MemorizeGame<String>(cards: <#T##Array<MemorizeGame<String>.Card>#>)
  // private(set) var model: MemorizeGame<String>
  // MARK: - Aceess to Model
  var cards: Array<MemorizeGame<String>.Card> {
    // 单行返回, return 可省略!
    model.cards
    // return model.cards
  }
  // MARK: - Intents
  func choose(card: MemorizeGame<String>.Card) {
    // label
    model.choose(card: card)
  }
}
