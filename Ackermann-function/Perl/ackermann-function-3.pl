sub A {
  my ($m, $n) = @_;
  $m == 0 ? $n + 1 :
  $n == 0 ? A($m - 1, 1) :
            A($m - 1, A($m, $n - 1))
}

for ($m = 0; $m < 4; $m++){    
    for($n = 0; $n < 13; $n++){
        print A($m,$n), "\n";
    }
}
