<?php
$a = $_POST['number1'];
$b = $_POST['number2'];
$c = $_POST['number3'];
$d = $_POST['number4'];


$max=0;

if($a >= $b && $a >= $c && $a>=d)
{
$max=$a;
}
if($b >= $a && $b >= $c && $b >= $d)
{
$max=$b;
}
if($c >= $a && $c >= $b && $c >= $d)
{
$max=$c;
}
if($d >= $a && $d >= $b && $c <= $d)
{
$max=$c;
}
echo "The Greatest Number is : ".$max;



?>

