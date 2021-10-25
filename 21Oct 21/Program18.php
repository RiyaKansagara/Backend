<?php  

$a = array(     
             array(1, 2, 3),  
             array(10,20,30),  
             array(100,200,300)  
           );  
   
$row= count($a);  
$col= count($a[0]);    
for($i = 0; $i < $col; $i++)
   {  
    $sum = 0;  
    for($j = 0; $j < $row; $j++){  
      $sum = $sum + $a[$j][$i];  
    }  
    print("Sum of " . ($i+1) . " column: " . $sum);  
    print("<br>");  
}  
?>  
