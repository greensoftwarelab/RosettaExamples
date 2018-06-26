let rec a = function
  | 0, n -> (n+1)
  | m, 0 -> a(m-1, 1)
  | m, n -> a(m-1, a(m, n-1))
in
for m = 0 to 3 do
    for n = 0 to 12 do
        print_int (a (m,n));
        print_newline ()
    done
done
