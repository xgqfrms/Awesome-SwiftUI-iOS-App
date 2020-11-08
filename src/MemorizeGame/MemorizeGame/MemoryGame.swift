//
//  MemoryGame.swift
//  MemorizeGame
//
//  Created by 夏凌晨 on 2020/11/8.
//  Copyright © 2020 xgqfrms. All rights reserved.
//


// Model
import Foundation

// 泛型
struct MemoryGame<CardContent> {
  // 泛型
  var cards: Array<Card>
  // 初始化，构造函数 属性
  init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
    cards = Array<Card>()
    // for in [0, n) 左闭右开
    for pairIndex in 0...numberOfPairsOfCards {
      let content = cardContentFactory(pairIndex)
      cards.append(Card(content: content, id: pairIndex*2))
      cards.append(Card(content: content, id: pairIndex*2 + 1))
      // cards.append(Card(isFaceUp: false, isMatched: false, content: content, id: pairIndex*2))
      // cards.append(Card(isFaceUp: false, isMatched: false, content: content, id: pairIndex*2 + 1))
    }
  }
  func choose(card: Card) {
    print("choosed card is \(card)")
  }
  // Identifiable
  struct Card: Identifiable {
    var isFaceUp: Bool = false
    var isMatched: Bool = false
    var content: CardContent
    var id: Int
  }
}
