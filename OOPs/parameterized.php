<?php

class Employee
{	
	Public $name;
	Public $position;
	function __construct($name,$position)
	{	
		$this->name=$name;
		$this->profile=$position;
	}	
	function show_details()
	{
		echo $this->name." : ";
		echo "Your position is ".$this->profile."\n<br>";
	}
}	
$employee_obj= new Employee("Riya","developer");
$employee_obj->show_details();	
$employee2= new Employee("Avni","Manager");
$employee2->show_details();

?>
