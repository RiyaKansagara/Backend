<?php  

$a = array(     
             array(10,20,30),  
             array(1,2,3),  
             array(40,50,60)  
           );  
   
$row = count($a);  
$col = count($a[0]);  

for($i = 0; $i < $row; $i++){  
    $sum = 0;  
    for($j = 0; $j < $col; $j++){  
      $sum = $sum + $a[$i][$j];  
    }  
    print("Sum of " . ($i+1) ." row: " . $sum);  
    print("<br>");  

}  
?>  
