<?php

session_start();
include 'con.php';

if($_SESSION['email']==''){
    header('Location:adlogin.php');
}
else{

$id=$_GET['id'];
$email=$_SESSION['email'];

$query1=mysqli_query($con,"select name from admin where email='$email'") or die('Error in query');

$row1=mysqli_fetch_array($query1);
echo "<center><h5>Welcome to FRUITIKHA ".$row1['name']."</h5></center>";

$query2=mysqli_query($con," select * from Product where id='$id' ") or die("Error in query");
$row2=mysqli_fetch_array($query2);

$name=$row2['pname'];
$price=$row2['price'];
$description=$row2['description'];
$image=$row2['image'];
$category=$row2['category'];
$is_active=$row2['is_active'];


}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>update </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<center>
    <form method="POST" enctype="multipart/form-data">
        <table>
            <tr style="background-color:#d8dfed;">
                <td colspan="2" style="padding-bottom: 20px;">
                <label for="update">UPDATE PRODUCT</label>
                </td>
            </tr>
            <tr>
                <td> <label for="name">Enter Product Name:</label> </td>
                <td> <input type="text" class="input-value" name="name" id="name" value="<?php echo $name ?>"> </td>
            </tr>
            <tr>
                <td> <label for="price">Enter Product Price:</label> </td>
                <td> <input type="text" class="input-value" name="price" id="price" value="<?php echo $price ?>"> </td>
            </tr>
            <tr>
                <td><label for="description">Enter Product Description:</label></td>
                <td><textarea name="description" class="input-value" cols="24" rows="5" id=""><?php echo $description ?></textarea></td>
            </tr>
            <tr>
                <td><label for="file">Select Image:</label></td>
                <td style="padding-left: 45px;">
                <img src="<?php echo $image ?>" style="width:100px;height:100px" alt="">
                <input type="file" name="file" > 
                </td>
            </tr>
            <tr>
                <td><label for="category">Select Category Name:</label></td>
                <td class="category">
                <select name="category" value="<?php echo $category ?>" id="category">
                    <option><?php echo $category ?></option>
                    <option value="citrus">citrus</option>
                    <option value="berries">berries</option>
                    <option value="melons">melons</option>
                </select>
                </td>
            </tr>
            <tr>
                <td> <label for="is_active">Enter Product Activation:</label> </td>
                <td> <input type="number" min="0" max="1" class="input-value" name="is_active" id="is_active" value="<?php echo $is_active ?>"> </td>
            </tr>
            <tr>
                <td colspan="2" style="padding-bottom: 20px;"><input type="submit" class="btn" name="update" value="SUBMIT">
                <a href="view.php" class="btn">BACK</a></td>
            </tr>
        </table>
    </form>
    </center>
</body>
</html>

<?php

if(isset($_POST['update'])){

    $name=$_POST['name'];
    $price=$_POST['price'];
    $description=$_POST['description'];
    $selected=$_POST['category'];
    $is_active=$_POST['is_active'];

    if($_FILES["file"]["size"]==0){
        $filepath=$image;
    }else{
        $filepath = "assets/img/products/" . $_FILES["file"]["name"];

    }


    $sql="update Product set pname='$name', price='$price', description='$description', image='$filepath', category='$selected', is_active='$is_active' where id=$id" or die("Error in Query");

    $query=mysqli_query($con,$sql); 


        if($query)
        {
            move_uploaded_file($_FILES["file"]["tmp_name"], $filepath);
            header('Location:view3.php');
        }
        else
        {
            echo "failed";
        }
}

?>