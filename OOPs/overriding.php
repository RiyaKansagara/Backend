<?php

class P {
	function geeks() 
    {
		echo "Parent";
	}
}

class C extends P {	
	function geeks() 
    {
		echo "\nChild";
	}
}
$p = new P;
$c= new C;
$p->geeks();
$c->geeks();
?>
