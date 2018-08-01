<?php
for ($i = 1; $i <= 100; $i++) {
	$root = sqrt($i);
	$state = ($root == ceil($root)) ? 'Open' : 'Closed';
	echo "Door {$i} is {$state}\n";
}
?>
