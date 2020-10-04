<?php
    session_start();

    if(empty($_POST['username']))
        header("Location:../login.php");
    else
        $username = $_POST['username'];
    
    if(empty($_POST['password']))
        header("Location:../login.php");
    else
        $password = $_POST['password'];

    include 'databaseConnection.php';

    $sql = "SELECT COUNT(*) AS count FROM users WHERE username = '".$username."' AND pswd = '".$password."'";
    $result = mysqli_query($connection, $sql);
    
    $row = mysqli_fetch_array($result);
    $count = $row['count'];
    
    if($count > 0) {
        $_SESSION['username'] = $username;
        header("Location:../profile.php");
    }
    else
        header("Location:../login.php");
    
    mysqli_close($connection);
?>