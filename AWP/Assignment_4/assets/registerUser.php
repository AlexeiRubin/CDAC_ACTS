<?php
    include 'databaseConnection.php';

    if(empty($_POST['username']))
        header("Location:../register.php");
    else
        $username = $_POST['username'];

    if(empty($_POST['password']))
        header("Location:../register.php");
    else
        $password = $_POST['password'];

    if(empty($_POST['confirmPassword']))
        header("Location:../register.php");
    else
        $confirmPassword = $_POST['confirmPassword'];

    if($password != $confirmPassword)
        header("Location:../register.php");

    if(empty($_POST['gender']))
        header("Location:../register.php");
    else
        $gender = $_POST['gender'];

    if($gender == "Male")
        $gender = "M";
    else if($gender == "Female")
        $gender = "F";
    else
        $gender = "T";

    if(empty($_POST['emailId']))
        header("Location:../register.php");
    else
        $emailId = $_POST['emailId'];

    if(empty($_POST['phoneNumber']))
        header("Location:../register.php");
    else
        $phoneNumber = $_POST['phoneNumber'];

    if(empty($_POST['dateOfBirth']))
        header("Location:../register.php");
    else
        $dateOfBirth = $_POST['dateOfBirth'];
    
    $sql = "INSERT INTO users (username, pswd, gender, email, phone, dob) VALUES ('".$username."', '".$password."', '".$gender."', '".$emailId."', '".$phoneNumber."', '".$dateOfBirth."')";

    if(mysqli_query($connection, $sql))
        echo "Insert Successful";
    else
        echo "Insert Failed: " . $sql . "<br>" . mysqli_error($connection);

    mysqli_close($connection);

    header("Location:../register.php");
?>