<?php

    $num=$_POST["num"];  
    $total=0;  
    $x=$num;  
    while($x!=0)  
    {  
        $r=$x%10;  
        $total=$total+$r*$r*$r;  
        $x=$x/10;  
    }  
    if($num==$total)  
    {  
        echo "It is an Armstrong number";  
    }  
    else  
    {  
        echo "It is not an Armstrong number";  
    }  

?>
