<?php
function example($num1, $num2, $num3)
{
	$product = $num1 * $num2 * $num3;
	
	return $product; 
}
$retValue = example(2, 3, 5);
echo "The product is $retValue";
?>
