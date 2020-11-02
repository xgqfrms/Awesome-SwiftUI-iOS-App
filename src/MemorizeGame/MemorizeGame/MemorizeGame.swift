//
//  MemorizeGame.swift
//  MemorizeGame
//
//  Created by 夏凌晨 on 2020/11/2.
//  Copyright © 2020 xgqfrms. All rights reserved.
//

// ViewModel
import Foundation

// 泛型
struct MemorizeGame<CardContent> {
  var cards: Array<Card>
  func choose(card: Card) {
    print("choosed card is \(card)")
  }
  struct Card {
    var isFaceUp: Bool
    var isChoosed: Bool
    var content: CardContent
  }
}
