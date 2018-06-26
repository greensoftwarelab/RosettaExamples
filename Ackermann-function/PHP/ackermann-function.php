<?php
function ackermann( $m , $n )
{
    if ( $m==0 )
    {
        return $n + 1;
    }
    elseif ( $n==0 )
    {
        return ackermann( $m-1 , 1 );
    }
    return ackermann( $m-1, ackermann( $m , $n-1 ) );
}

for($m = 0; $m < 4; $m++){
    for($n = 0; $n < 13; $n++){
        echo ackermann($m, $n),"\n";
    }
}
?>
