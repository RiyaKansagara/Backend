<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <center>
    <form action="signup.php" method="post">
        <table>
            <tr style="background-color:#ffff66;">
                <td style="padding-bottom: 20px;">
                <label for="signup">SIGN UP</label>
                </td>
            </tr>
            <tr>
                <td>
                <input type="text" class="input-value" name="name" id="" placeholder="Enter your Name">
                </td>
            </tr>
            <tr>
                <td>
                <input type="email" class="input-value" name="email" id="" placeholder="Enter your Email">
                </td>
            </tr>
           
            <tr>
                <td>
                <input type="password" class="input-value" name="password" id="" placeholder="Enter your Password">
                </td>
            </tr>
            <tr>
                <td>
                <input type="password" class="input-value" name="c_password" id="" placeholder="Confirm your Password">
                </td>
            </tr>
            <tr>
                <td>
                <input type="text" class="input-value" name="mobile" id="" placeholder="Enter your Mobile Number">
                </td>
            </tr>
            <tr>
                <td style="padding-bottom: 20px;">
                <input type="submit" class="btn" name="signup" value="SIGN UP">
                <a href="login.php" class="btn">LOGIN</a>    
            </td>
            </tr>
        </table>
    </form>
    </center>
    </body>
</html>

<?php
if(isset($_POST['signup'])){
$name=$_POST['name'];
$email=$_POST['email'];
$password=$_POST['password'];
$c_password=$_POST['c_password'];
$mobile=$_POST['mobile'];

try{

$pdo = new PDO("mysql:host=localhost;dbname=Admin", "root", "");
$insert_query="Insert into Student(name,email,password,mobile) values
(:name,:email,:password,:mobile)";

$query = $pdo -> prepare($insert_query);
$query -> bindParam(':name', $name, PDO::PARAM_STR);
$query -> bindParam(':email', $email, PDO::PARAM_STR);
$query -> bindParam(':password', $password, PDO::PARAM_STR);
$query -> bindParam(':mobile', $mobile, PDO::PARAM_STR);
$lastInsertId=$pdo->lastInsertId();
$query -> execute();
// $lastInsertId=$pdo->lastInsertId();
if($lastInsertId!="")
{
echo "Data Inserted Successfully";
}
else
{
echo "Error in Inserting";
}


}
catch (PDOException $e) {
die("Could not connect to the database :" . $e->getMessage());
}


}

?>