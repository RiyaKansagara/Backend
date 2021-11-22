<?php
class MyAccess {
var $var = "This is first variable";
protected $fist_name;
function returnVar() {
echo $this->fist_name;
}
function set_fist_name($set_this){
$this->fist_name = $set_this;
}
}
class child extends MyAccess {
function setVal($set_this){
$this->fist_name = $set_this;
}
function getVal(){
echo $this->fist_name;
}
}
$obj1 = new child();
$obj1->setVal("Hello! Riya here");
$obj1->getVal();
?>

