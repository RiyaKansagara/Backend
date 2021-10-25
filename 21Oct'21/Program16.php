<?php

$multiarray = array(
    array("Cycle" => 10, "Bike" => 50, "Car" => 1),
    array("Cycle" => 21, "Bike" => 1, "Car" => 0),
    array("Cycle" => 19, "Bike" => 2, "Car" => 11)
);

$sum = 0;
foreach ($multiarray as $subArray) {
    foreach ($subArray as $mulKey=>$mulValue) 
    {
        $sum += $mulValue;
    }
}

echo "The sum of numbers in 2D array is: ".$sum;
?>
