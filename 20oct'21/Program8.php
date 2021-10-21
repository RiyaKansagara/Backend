<?php

$english = $_POST['num1'];
$maths = $_POST['num2'];
$science = $_POST['num3'];

$total = ($english + $maths + $science); 
$average = ($total/3); 
echo " Total marks of three subjects = ".$total ."<br>";
echo " Average marks of three subjects = ".$average ."<br>";
if($total<35 || $english<35 || $maths<35 || $science<35)
{
echo "Fail";
}

elseif($average>=45 && $average<60)
{
echo "Second Class";
}
elseif($average>=60 && $average<75)
{
echo "First Class";
}
else
{
echo "Distinction";
}

?>

