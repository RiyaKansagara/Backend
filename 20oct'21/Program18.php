<?php   
$num = $_POST['value'];  
$reverse = strrev($num);  
if($num == $reverse)
{  
 echo "The number $num is Palindrome";     
}

else
{  
echo "The number $num is not a Palindrome";   
}  
   
      ?>
