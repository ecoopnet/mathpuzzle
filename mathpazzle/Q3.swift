//
// Created by InomataMitsuhiro on 2016/02/27.
// Copyright (c) 2016 ecoop.net. All rights reserved.
//

import Foundation

class Q3 : Base {
  var cards = [Bool]()
  func run() {
    cards = [Bool]()
    for var i = 0; i < 100; i++ {
      cards.append(false);
    } // ura

    for var n = 2; n <= 100; n++ {
      for var i = n - 1; i < 100; i += n {
        cards[i] = !cards[i]
      }
      print(n,": ")
      status()
    }

    print("Answer",": ")
    status()
  }
  func status(){
    print(
    cards.enumerate()
    .filter{ !$0.1 }
    .map { $0.0 + 1 }
    )
  }
}
