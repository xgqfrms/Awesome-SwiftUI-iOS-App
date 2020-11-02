//
//  MemorizeGame.swift
//  MemorizeGame
//
//  Created by 夏凌晨 on 2020/11/2.
//  Copyright © 2020 xgqfrms. All rights reserved.
//

// Model
import Foundation

// 泛型
struct MemorizeGame<CardContent> {
  // 泛型
  var cards: Array<Card>
  // 初始化，构造函数 属性
  func choose(card: Card) {
    print("choosed card is \(card)")
  }
  struct Card {
    var isFaceUp: Bool
    var isChoosed: Bool
    var content: CardContent
  }
}
