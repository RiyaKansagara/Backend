<?php
function swap($a,$b,$temp)
{
    echo "Array1 before Swapping : ";
    print_r($a);
    echo "<br>Array2 before Swapping : ";
    print_r($b);
    $temp=$a;
    $a=$b;
    $b=$temp;
    echo "<br><br>Array1 after Swapping : ";
    print_r($a);
    echo "<br>Array2 after Swapping : ";
    print_r($b);
}
$a=array(1,2,3,4,5,6);
$b=array(10,20,30,40,50,60);
$temp=array();
swap($a,$b,$temp);
?>
