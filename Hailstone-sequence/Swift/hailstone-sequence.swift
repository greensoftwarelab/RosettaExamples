func hailstone( m:Int) -> [Int] {
	var n=m;
    var arr = [n]

    while n != 1 {

        if n % 2 == 0 {
            n /= 2
        } else {
            n = (3 * n) + 1
        }

        arr.append(n)
    }

    return arr
}

let n = hailstone(m:27)

print("hailstone(27): \(n[0...3]) ... \(n[n.count-4...n.count-1]) for a count of \(n.count).")

var longest = (n: 1, len: 1)

for i in 1...100_000 {

    let new = hailstone(m:i)

    if new.count > longest.len {
        longest = (i, new.count)
    }
}

print("Longest sequence for numbers under 100,000 is with \(longest.n). Which has \(longest.len) items.")
