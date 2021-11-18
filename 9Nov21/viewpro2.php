<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <style>
        th{
            text-align: center;
            background-color: rgb(224, 111, 36); 
            padding-top: 20px;
            padding-bottom: 20px;
        }
        .container{
            text-align: right;
            margin-bottom: 10px;
        }
        a{
            color: rgb(224, 111, 36);
        }
        a:hover{
            background-color: rgb(224, 111, 36);
            color: white;
        }
        table tr td{
            padding-bottom: 20px;
            color: white;
        }
        
    </style>
</head>
<body>
    <div class="container">
        <a style="color: white;" href="logout.php" class="btn">LOGOUT</a>
        <a style="color: white;" href="product.php" class="btn">BACK</a>    

    </div>
</body>
</html>

<?php
use UI\Draw\Color;


include 'con.php';
session_start();

if($_SESSION['email']==''){
    header('Location:adlogin.php');
}
else{
    $email=$_SESSION['email'];
    $query1=mysqli_query($con,"select name from admin where email='$email'") or die("error in query");
    
    $row1=mysqli_fetch_array($query1);
        echo "<center><h5>Welcome to Fruitikha ".$row1['name']."</h5></center>";    
}


echo "<center><table border='2'>
    
    <th>NAME</th>
    <th>PRICE</th>
    <th>CATEGORY</the=>
    <th>DESCRIPTION</the=>
    <th>IMAGE</the=>
    
    <th colspan='2'>ACTION</th>";

$sql="select * from Product where category='berries'" or die("error in query");

$query=mysqli_query($con,$sql);

while($row=mysqli_fetch_array($query))
{
    $id=$row['id'];
    echo "<tr>";
    
    echo "<td>".$row['pname']."</td>";
    echo "<td>".$row['price']."</td>";
    echo "<td>".$row['category']."</td>";
    echo "<td>".$row['description']."</td>";
    echo "<td><img src=".$row['image']." height='50px' width='50px'></td>";
   

    echo "<td><a href='update2.php?id=$id'>EDIT</a></td>";
    echo "<td><a href='delete2.php?id=$id'>DELETE</a></td>";
    echo "</tr>";
}
echo "</table></center>";
?>