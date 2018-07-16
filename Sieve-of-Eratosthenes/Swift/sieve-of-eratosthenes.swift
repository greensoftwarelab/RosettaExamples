import Foundation

func primes(n: Int) -> AnyIterator<Int> {

  var (seive, i) = ([Int](0..<n), 1)
  let lim = Int(sqrt(Double(n)))

  return AnyIterator.init(_:) {
    while i < n {
      if seive[i] != 0 {
        if i <= lim {
          for notPrime in stride(from: i*i, to: n, by: i) {
            seive[notPrime] = 0
          }
        }
        return i
      }
      i += 1;
    }
    return nil
  }
}

let p = primes(n:100000)
