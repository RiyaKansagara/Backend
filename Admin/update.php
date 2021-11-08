<?php

session_start();
include 'con.php';

if($_SESSION['email']==''){
header('Location:login.php');
}
else{

$id=$_GET['s_id'];
$email=$_SESSION['email'];

$query1=mysqli_query($con,"select name from Student where email='$email'") or die('Error in query');

$row1=mysqli_fetch_array($query1);
echo "<center>Hello ".$row1['name']."</center>";

$query2=mysqli_query($con," select * from Student where id='$id' ") or die("Error in query");
$row2=mysqli_fetch_array($query2);

$name=$row2['name'];
$email=$row2['email'];
$password=$row2['password'];
$mobno=$row2['mobile'];
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
                <td> <input type="password" class="input-value" name="pwd" id="pwd" value="<?php echo $password ?>"> </td>
            </tr>
            <tr>
                <td> <label for="mobno">Enter Mobile No.</label> </td>
                <td> <input type="text" class="input-value" name="mobno" id="mobno" value="<?php echo $mobno ?>"> </td>
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

include 'con.php';
session_start();

if($_SESSION['email']==''){
    header('Location:login.php');
}else{
    $email=$_SESSION['email'];
$query1=mysqli_query($con,"Select name from Student where email='$email'") or die("error in query");

$row1=mysqli_fetch_array($query1);
    echo "<center>Hello ".$row1['name']."</center>";

}


if(isset($_POST['update'])){

$name=$_POST['name'];
$email=$_POST['email'];
$password=$_POST['pwd'];
$mobileno=$_POST['mobno'];

include 'con.php';

$sql="update Student set name='$name',email='$email',password='$password',mobile='$mobileno' where id=$id";

$query=mysqli_query($con,$sql) or die("Error in Query");


if($query){
echo "data update";
header('Location:dashboard.php');
}else{
echo "Error in update";
}

mysqli_close($con);
}

?>