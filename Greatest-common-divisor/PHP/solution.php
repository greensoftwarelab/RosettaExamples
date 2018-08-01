<?php
function gcdRec($n, $m)
{
    if($m > 0)
        return gcdRec($m, $n % $m);
    else
        return abs($n);
}

echo "GCD of 2147483646,1143271457 is " .  gcdRec(2147483646,1143271457) . "\n";

?>
