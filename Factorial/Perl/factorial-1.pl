sub factorial
{
  my $n = shift;
  my $result = 1;
  for (my $i = 1; $i <= $n; ++$i)
  {
    $result *= $i;
  };
  $result;
}


my @f = factorial(15);
print "@f\n";
