let n = 100
let m = 5
// 8, 3 = 4
// 20, 3 = 8
// 100, 5 = 22


//func run(n n:Int, m:Int) -> Int {
//  var bars:[Int] = [n]
//  var times = 0
//  while(bars.count < n){
//    // 1cmになるまで分割を繰り返す
//    bars = divide(bars, m:m)
//    times += 1
//  }
//  return times
//}
//
//func divide(bars:[Int], m:Int) -> [Int]{
//  return bars.enumerate().flatMap {
//    (i,v) -> [Int] in
//    if i >= m {
//      return [v]
//    }
//    let half = Double(v)/2.0
//    return [Int(ceil(half)), Int(floor(half))]
//  }
//}

func run(n n:Int,m:Int, current:Int = 1) -> Int {
  if current >= n { return 0 }
  if current < m { return 1 + run(n:n, m:m, current: current * 2) }
  return 1 + run(n:n, m:m, current: current + m)
}


print(run(n:8, m:3))
print(run(n:20, m:3))
print(run(n:100, m:5))


