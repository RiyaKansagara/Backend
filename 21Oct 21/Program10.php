<?php
function swap($a,$b,$temp)
{
    echo "First array before Swap : ";
    print_r($a);
    echo "<br>Second array before Swap : ";
    print_r($b);
    $temp=$a;
    $a=$b;
    $b=$temp;
    echo "<br><br>First array after Swap : ";
    print_r($a);
    echo "<br>Second array after Swap : ";
    print_r($b);
}
$a=array(1,2,3,4,5,6);
$b=array(6,5,4,3,2,1);
$temp=array();
swap($a,$b,$temp);
?>
