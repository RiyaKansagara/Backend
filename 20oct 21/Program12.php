<?php
$integer = $_POST["value"];  
$factorial = 1;  
for ($x=$integer; $x>=1; $x--)   
{  
  $factorial = $factorial * $x;  
}  
echo "Factorial of $value is $factorial"; 
?>
