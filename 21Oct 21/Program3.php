<?php

function even_odd( $arr, $size)
{
	$even_count = 0;		
	$odd_count = 0;	

	for( $i = 0 ; $i < $size ; $i++)
	{
	
		if ($arr[$i] & 1 == 1)
			$odd_count ++ ;	
		else			
			$even_count ++ ;		
	}

	echo "Total even integers = " ,
		$even_count," <br>Total odd integers " ,$odd_count ;	
}

	$arr = array(1,2,3,4,5,6,7,8,9);
	$n = count($arr);
	even_odd($arr, $n);

?>
