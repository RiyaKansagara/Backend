<?php


function counter($arr){
$zero_count = 0;
$positive = 0;
$negative = 0;

for($i = 0;$i <count($arr);$i++){

if($arr[$i]===0){
$zero_count++;
}
else if($arr[$i]> 0){
$positive++;
}
elseif($arr[$i] < 0){
$negative++;
}


}
echo "Positive count : ".$positive."<br>";
echo "Zero count : " .$zero_count."<br>";
echo "Negative count : ".$negative."<br>";

}

$array = array(0,1,3,-5,-6,0);

counter($array);
?>