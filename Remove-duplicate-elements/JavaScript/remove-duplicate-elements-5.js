function uniq(lst) {
  var u = [],
    dct = {},
    i = lst.length,
    v;

  while (i--) {
    v = lst[i], dct[v] || (
      dct[v] = u.push(v)
    );
  }
  u.sort(); // optional

  return u;
}

lst = [1,2,3,4,5,6,7,8,9,3,4,7,7];
console.log(uniq(lst));
