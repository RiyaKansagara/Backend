<?php

function binarySearch(Array $arr, $x)
{
	
	if (count($arr) === 0) return false;
	$low = 0;
	$high = count($arr) - 1;
	
	while ($low <= $high) {
		
		$mid = floor(($low + $high) / 2);

		if($arr[$mid] == $x) {
			return true;
		}

		if ($x < $arr[$mid]) {
			
			$high = $mid -1;
		}
		else {
			
			$low = $mid + 1;
		}
	}
	
	return false;
}

$arr = array(2,3,8,7,4,9);
$element = 8;
if(binarySearch($arr, $element) == true) {
	echo $value." Element found";
}
else {
	echo $value." Element not found";
}
?>
