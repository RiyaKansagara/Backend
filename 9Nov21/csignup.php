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
    <form action="csignup.php" method="post">
        <table>
            <tr style="background-color: rgb(224, 111, 36);">
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
                <td style="padding-bottom: 20px;">
                <input type="submit" class="btn" name="signup" value="SIGN UP">
                <a href="clogin1.php" class="btn" style="background-color:  rgb(224, 111, 36);border-radius: 10px;">LOGIN</a>    
            </td>
            </tr>
        </table>
    </form>
    </center>
    </body>
</html>

<?php
include 'con.php';
if($_POST['password']==$_POST['c_password'])
{
if(isset($_POST['signup']))
{

    $name=$_POST['name'];
    $email=$_POST['email'];
    $password=$_POST['password'];

    $query="insert into Customer(Name,password,email) values('$name','$password','$email')" or die("error in query");
    
    if(mysqli_query($con,$query))
    {
        header('Location:clogin1.php');
    }
    else
    {
        echo "failed";
   }
}
}
else
{
    echo '<script>alert("Password not matched")</script>';
}
?>

