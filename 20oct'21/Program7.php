<?php

$cost_price=$_POST["cp"];
$sell_price=$_POST["sp"];

if ($sell_price > $cost_price)
{
$price=$sell_price-$cost_price;
$profit_price = ($price * 100) / $cost_price;
$total = $price;
echo "Total Profit : ".$total;
}
else 
{
$loss = $cost_price - $sell_price;
$loss_price = ($loss * 100) / $cost_price;
$total= $loss;
echo "Total Loss : ".$total;
}

?>
?>
