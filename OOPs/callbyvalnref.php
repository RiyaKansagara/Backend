<?php
function value($num) 
{
	$num += 2;
	return $num;
}
function reference(&$num) {
	$num += 10;
	return $num;
}

$n = 10;

value($n);
echo "The original value is still $n \n<br>";

reference($n);
echo "The original value changes to $n";

?>
