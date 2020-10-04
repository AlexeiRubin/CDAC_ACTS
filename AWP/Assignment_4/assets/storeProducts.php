<?php
    include 'databaseConnection.php';

    if(empty($_POST['productname']))
        header("Location:../products.php");
    else
        $productname = $_POST['productname'];
    
    if(empty($_POST['price']))
        header("Location:../products.php");
    else
        $price = $_POST['price'];

    if(empty($_POST['productweight']))
        header("Location:../products.php");
    else
        $productweight = $_POST['productweight'];

    $sql = "INSERT INTO products (productname, price, productweight) VALUES ('".$productname."', '".$price."', '".$productweight."')";

    if(mysqli_query($connection, $sql))
        echo "Insert Successful";
    else
        echo "Insert Failed: " . $sql . "<br>" . mysqli_error($connection);

    mysqli_close($connection);

    header("Location:../addProduct.php");
?>