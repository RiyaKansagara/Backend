<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <style>
        th{
            text-align: center;
            background-color: #ffff66;
            padding-top: 20px;
            padding-bottom: 20px;
        }
        .container{
            text-align: right;
        }
        a{
            color: black;
        }
        a:hover{
            background-color: grey;
            color: white;
        }
        table tr td{
            padding-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <a href="logout.php" class="btn">LOGOUT</a>
    </div>
</body>
</html>

<?php


include 'con.php';
session_start();

try{

    if($_SESSION['email']==''){
        header('Location:login.php');
    }

    else
    {

        $email=$_SESSION['email'];
        $sql="select name from Student where email='$email'";
        $q = $pdo->query($sql);
        $q->setFetchMode(PDO::FETCH_ASSOC);
        while($row=$q->fetch())
        {
            echo "<center><h4>Hello ".$row['name']."</h4></center>";
        }
    }   
    echo "<center><table class='table-primary' border='2'>
        <th>ID</th> 
        <th>NAME</th>
        <th>EMAIL</th>
        <th>PASSWORD</th>
        <th>MOBILE</th>
        <th>Edit</th>
        <th>Delete</th></center>";
        
    $sql="select * from Student";
    $q=$pdo-> query($sql);

    $q->setFetchMode(PDO::FETCH_ASSOC);
    while($row=$q->fetch())
    {
        $sid=$row['id'];
        echo "<tr>";
        echo "<td>".$row['id']."</td>";
        echo "<td>".$row['name']."</td>";
        echo "<td>".$row['email']."</td>";
        echo "<td>".$row['password']."</td>";
        echo "<td>".$row['mobile']."</td>";

        echo "<td><a href=update.php?sid=$sid>Edit</a></td>";

        echo "<td><a href=delete.php?sid=$sid>Delete</a> </td>";
        echo "</tr>";
    }
    echo "</table>";
    }
    catch(PDOException $e)
    {
        echo $sql . "<br>" . $e->getMessage();
    }
?>