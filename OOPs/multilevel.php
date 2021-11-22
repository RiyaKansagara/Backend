<?php
class ParentClass {
var $var = "This is first variable";
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
echo "Extended By Parent Class -". $this->fist_name;
}
}
class child_2 extends child_1 {
function setVal($set_this){
$this->fist_name = $set_this;
}
function getVal(){
echo "Extended By child 1  - ".$this->fist_name;
}
}
$obj1 = new child_1();
$obj1->setVal("This is first inherited class");
$obj1->getVal();
echo "<br/><br/>";
$obj2 = new child_2();
$obj2->setVal("This is second inherited class");
$obj2->getVal();
?>