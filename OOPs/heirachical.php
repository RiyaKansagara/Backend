<?php
class ParentClass {
var $var = "This is first var";
public $fist_name;
function returnVar() {
echo $this->fist_name;
}
function set_fist_name($set_this){
$this->fist_name = $set_this;
}
}
class child_1 extends ParentClass {
function setVal($set_this){
$this->fist_name = $set_this;
}
function getVal(){
echo $this->fist_name;
}
}
class child_2 extends ParentClass {
function setVal($set_this){
$this->fist_name = $set_this." - ".$set_this;;
}
function getVal(){
echo $this->fist_name;
}
}
$obj1 = new child_1();
$obj1->setVal("This is first child class");
$obj1->getVal();
echo "<br/><br/>";
$obj2 = new child_2();
$obj2->setVal("This is second child class");
$obj2->getVal();
?>

