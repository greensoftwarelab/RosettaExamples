

func uniq<T: Equatable>(lst: [T]) -> [T] {
  var seen = [T]()
  return lst.filter { x in
    let unseen = seen.index(of:x) == nil
    if (unseen) {
      seen.append(x)
    }
    return unseen
  }
}

print(uniq(lst:[3,2,1,2,3,4]))

