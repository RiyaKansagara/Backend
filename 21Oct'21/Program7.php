<?php

function divisible($arr, $n)
{
	$counter = 0;

	for ($i = 0; $i < $n; $i++)
	{
		if ($arr[$i] % 5 == 0)
			$counter++;
	}

	return $counter;
}

$arr = array( 10,5,23,34,45,65,77,100 );
$n = count($arr);
echo "Total Number that are divisible by 5 are : ".divisible($arr, $n);

?>
