<?
class Parentclass {
    const CLASSPARENT = "Parent";
    function __construct()
    {
        echo "Within " . self::CLASSPARENT . " constructor.";
    }
}
 
class Childclass extends Parentclass {
    const CLASSCHILD = "Child";
    function __construct()
    {
        parent::__construct();    
        echo "Calling " . parent::CLASSPARENT . " class";
        echo "Within " . self::CLASSCHILD . " constructor";
    }
}
$obj = new Childclass();
?>