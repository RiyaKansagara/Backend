<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Products</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">

    <style>
    select{width: 80%;}
    </style>
</head>
<body>
    <center>
    <form action="addpro.php" enctype="multipart/form-data" method="post">
        <table>
            <tr style="background-color:rgb(224, 111, 36);">
                <td colspan="2" style="padding-bottom: 20px;">
                <label for="category">Add Products</label>
                </td>
            </tr>
            
            <tr style="color: white;">
                <td><label for="pname">Product Name:</label></td>
                <td><input type="text" class="input-value" name="pname" id=""></td>
            </tr>
            <tr style="color: white;">
                <td><label for="price">Price:</label></td>
                <td><input type="text" class="input-value" name="price" id=""></td>
            </tr>
            
            <tr style="color: white;">
            <td><label for="category">Category:</label></td>
            <td><select  name="category" id="category" value="<?php echo $category ?>">
            <option value=""><?php echo $category ?></option>
            <option value="citrus">Citrus</option>
            <option value="berries">Berries</option>
            <option value="melons">Melons</option>
            </select>
            </td>
            </tr>
            <tr style="color: white;">
                <td><label for="description">Product Description:</label></td>
                <td><textarea name="description" class="input-value" cols="24" rows="5" id=""></textarea></td>
            </tr>
            <tr style="color: white;">
                <td><label for="file">Image:</label></td>
                <td style="padding-left: 45px;">
                <input type="file" name="file">
                </td>
            </tr>
            
            <tr>
                <td colspan="2" style="padding-bottom: 20px;">
                <input type="submit" class="btn" name="add" value="ADD">
                <a href="admin1.php" class="btn">BACK</a>     
                </td>
            </tr>
        </table>
    </form>
    </center>
</body>
</html>

<?php
session_start();
include 'con.php';
if($_SESSION['email']==''){
    header('Location:adlogin.php');
}
else{
    if(isset($_POST['add'])){

        $pname=$_POST['pname'];
        $price=$_POST['price'];
        $category=$_POST['category'];
        $description=$_POST['description'];
        $filepath = "assets/img/products/" . $_FILES["file"]["name"];
        
        $query="insert into Product(pname,price,category,description,image) values('$pname',$price,'$category','$description','$filepath')" or die("error in query");
        echo $query;
        move_uploaded_file($_FILES["file"]["tmp_name"], $filepath);

        if(mysqli_query($con,$query))
        {
            header('Location:product.php');
        }
        else
        {
            echo "failed";
        }

    }

}

?>