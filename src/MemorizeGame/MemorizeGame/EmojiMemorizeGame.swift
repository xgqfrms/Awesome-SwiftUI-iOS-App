//
//  EmojiMemorizeGame.swift
//  MemorizeGame
//
//  Created by 夏凌晨 on 2020/11/2.
//  Copyright © 2020 xgqfrms. All rights reserved.
//

//import Foundation

import SwiftUI

class EmojiMemorizeGame {
//  internal init(model: <MemorizeGame>) {
//    self.model = model
//  }
  // private(set) 对内可修改, 对外可见
  private(set) var model: MemorizeGame<String>
  func choose(card: MemorizeGame<String>.Card) {
    // label
    model.choose(card: card)
  }
}
