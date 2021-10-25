<?php
    $arr = array(1,3,45,65,43,22,80); 
    $max=$max2=0;
    for ($i = 0; $i < count($arr); $i++)
    {
        if ($arr[$i] > $max) 
       {
            $max2 = $max;
            $max = $arr[$i];
        }
        else if (($arr[$i] > $max2) && ($arr[$i] != $max)) 
        {
            $max2 = $arr[$i];
        }
    }
    echo "First Max.  : " . $max . "<br/>"; 
    echo "Second max. : " . $max2 . "<br/>"; 
?>
