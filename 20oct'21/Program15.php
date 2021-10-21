<?php 

    $digits=$_POST["integer"];
    $count=0;
    $r=0;
    $i=0;
    
    while($i <= strlen($digits))
{
        $r=$digits%10;
        $count+=$r;
        $digits=$digits/10;
        $i++;
    }
    echo "Sum Of all digit = ".$count;

?>
