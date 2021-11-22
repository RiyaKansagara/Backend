<?php
class simple{

	public $k = "This keyword example";

	public function display(){
		return $this->k;
	}
}

$obj = new simple();
echo $obj->display();

?>
