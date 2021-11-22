<?PHP
class A
{
	function A()
	{
		echo "It's a User-defined Constructor of the class A";
	}

	function __construct()
	{
		echo "It's a Pre-defined Constructor of the class A";
	}
}

$obj= new A();
?>
