<?php
    $connection = mysqli_connect("localhost", "root", "", "awpAssignment");

    if(!$connection)
        die("Connection to Database Failed" . mysqli_connect_error());
?>