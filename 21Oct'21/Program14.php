<?php

 $given_val=array('12321','343','868','24342','234');
 $arr_size=sizeof($given_val);
 $res=0;
 $new_val=$given_val;


 for($i=0;$i<$arr_size;$i++){
    $rem=$new_val[$i]%10;   
    $res=($res * 10) + $rem;
    $new_val=$new_val[$i]/10;
 }

 $new_val=$given_val;

 if ($new_val==$given_val){
    echo "Number is palindrome";
 }else{
     echo "Number is not palindrome";
 }
?>