<?php	
	class CopyConstructor {
		public $name;
		public $food_type;

		public function __construct() { } 
		public function copyCon(CopyConstructor $o)
		{
			$this->name = $o->name;
			$this->food_type = $o->food_type;
		}
		function show() {
			echo "Name = ".$this->name.'<br/>';
			echo "Food Type = ".$this->food_type;
		}
	}
	$obj1 = new CopyConstructor();
	$obj1->name = 'umar';
	$obj1->food_type = 'biryani';
	$obj1->show();
	echo '<br/> ==================  object 2 ================'.'<br/>';
	$obj2 = new CopyConstructor();
	$obj2->copyCon($obj1);
	$obj2->show();
	echo '<br/>'.'<br/>';
	$obj2->name="master";
	$obj2->show();
?>
