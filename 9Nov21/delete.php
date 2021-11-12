<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete</title>
</head>
<body>
    
</body>
</html>

<?php

session_start();
include 'con.php';

if($_SESSION['email']==''){
    header('Location:product.php');
}

$id=$_GET['id'];

$sql="delete from Product where id=$id";

$query=mysqli_query($con,$sql) or die("Error in Query.");


if($query){
    echo "data deleted";
    header('Location:view.php');
    }
else{
    echo "<script>alert('Error in delete.)</script>";
}



?>