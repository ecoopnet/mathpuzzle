// #!/usr/bin/swift

import Foundation
// import AppKit


class Q1 : Base {
  func run() {
      var i = 10
      repeat {
          print("Try: \(i)")
          if isSatisfy(i,base:10) && isSatisfy(i,base:8) && isSatisfy(i,base:2) {
              print("Answer: \(i) (2:\(toS(i, base:2)), 8:\(toS(i, base:8))")
              return
          }
          i++
      } while true
  }

    private func isSatisfy(value:Int, base:Int) -> Bool {
        let v = toS(value, base:base)
        return v == v.re
    }

//    private func isSatisfy(value:Int, base:Int) -> Bool {
//        let numbers = split(value,base:base)
//        for var i = 0; i <= numbers.count / 2; i++ {
//            if numbers[i] != numbers[numbers.count - 1 - i] {
//                return false
//            }
//        }
//        return true
//    }

    private func toS(value:Int, base:Int) -> String {
        let numbers = split(value, base:base)
        return numbers.map { String($0) }.joinWithSeparator("")
    }

    private func split(var value:Int, base:Int) -> [Int]{
        var numbers = [Int]()
        while value > 0 {
            let v = value % base
            numbers.append(v)
            value /= base
        }
        return numbers
    }
}