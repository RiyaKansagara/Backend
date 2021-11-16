<?php

session_start();
include 'con.php';

try{
    if($_SESSION['email']==''){
        header('Location:login.php');
    }
    else{
        $id=$_GET['sid'];
        $email=$_SESSION['email'];
        $sql="select name from Student where email='$email'" or die("error in query");
        
        $q = $pdo->query($sql);
        $q->setFetchMode(PDO::FETCH_ASSOC);
        while($row=$q->fetch()){
            echo "<center><h5>Hello ".$row['name']."</h5></center>";    
        }
    }
}
catch(PDOException $e){
    echo $sql . "<br>" . $e->getMessage();
}


try{
    $sql="select * from Student where id='$id'" or die("error in query");
        
    $q = $pdo->query($sql);
    $q->setFetchMode(PDO::FETCH_ASSOC);
    while($row=$q->fetch()){   
        $name=$row['name'];
        $email=$row['email'];
        $password=$row['password'];
        $mobile=$row['mobile'];
    }
}
catch(PDOException $e){
    echo $sql . "<br>" . $e->getMessage();
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Data</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <center>
    <form method="POST">
        <table>
            <tr style="background-color:#ffff66;">
                <td colspan="2" style="padding-bottom: 20px;">
                <label for="update">UPDATE DETAILS</label>
                </td>
            </tr>
            <tr>
                <td> <label for="name">Enter Name</label> </td>
                <td> <input type="text" class="input-value" name="name" id="name" value="<?php echo $name ?>"> </td>
            </tr>
            <tr>
                <td> <label for="email">Enter Email:</label></td>
                <td><input type="email" class="input-value" name="email" id="email" value="<?php echo $email ?>" ></td>
            </tr>
            <tr>
                <td><label for="pwd">Enter Password:</label></td>
                <td> <input type="password" class="input-value" name="password" id="password" value="<?php echo $password ?>"> </td>
            </tr>
            <tr>
                <td> <label for="mobno">Enter Mobile No.</label> </td>
                <td> <input type="text" class="input-value" name="mobile" id="mobile" value="<?php echo $mobile ?>"> </td>
            </tr>
            <tr>
                <td colspan="2" style="padding-bottom: 20px;"><input type="submit" class="btn" name="update" value="SUBMIT">
                <a href="dashboard.php" class="btn">BACK</a></td>
            </tr>
        </table>
    </form>
    </center>
</body>
</html>

<?php
session_start();

if(isset($_POST['update']))
{

    

        $name=$_POST['name'];
        $email=$_POST['email'];
        $password=$_POST['password'];
        $mobile=$_POST['mobile'];

        include 'con.php';

        try{
            $sql="update Student set name='$name',email='$email',password='$password',mobile='$mobile' where id=$id";
            $pdo->exec($sql);
            header('Location:dashboard.php');
        }
        catch(PDOException $e){
            echo $sql . "<br>" . $e->getMessage();
        }
   
}

?>