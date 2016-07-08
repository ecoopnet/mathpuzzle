let res = (1...10000).filter {
  if $0 % 2 == 1 { return false }
  var n = $0 * 3 + 1
  // var n = ($0 % 2 == 0 ? $0 * 3 + 1: $0 )
  while n != 1 {
    // print("\(n)", separator: ",")
    if n == $0 { return true }
    n = n % 2 == 0 ? n / 2 : n * 3 + 1
  }
  return false
}


print("\(res.count): \(res)")

