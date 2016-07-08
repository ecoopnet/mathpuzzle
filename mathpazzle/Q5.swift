
var price = 1000




func run(price:Int, coins:[Int] = [], count:Int = 0, index:Int = 0) -> Int {
  let available = [500,100,50,10]
  let maxCoins = 15
  if price <= 0 { return 0 }
  if count >= maxCoins { return 0 }
  //print("\(count): \(coins)")
  var found = 0
  for (i,coin) in available.enumerate() {
    if index > i { continue }
    let res = price - coin
    if res < 0 { continue }
    if res == 0 {
      print(coins + [coin])
      found += 1
      continue
    }
    found += run(res, coins:coins + [coin], count:count + 1, index:i)
  }
  return found
}

print("found:\(run(price))")

