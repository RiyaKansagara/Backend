<!DOCTYPE html>
<html>
<body>

<?php
class Car  {  
  public $name;
  public $color;
  function set_name($name) {
    $this->name = $name;
  }
  function get_name() {
    return $this->name;
  }
}

$a1 = new Car();
$a2 = new Car();
$a1->set_name('i10');
$a2->set_name('i20');

echo $a1->get_name();
echo "<br>";
echo $a2->get_name();
?>
 
</body>
</html>
