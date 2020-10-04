<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SmokeHouse - Profile</title>
    <link rel="stylesheet" href="stylesheets/profileStyle.css">
</head>
<body>
    <div class="container">

        <?php
            session_start();

            if(!isset($_SESSION['username']))
                header("Location:login.php");

            include "assets/headerNav.php"
        ?>

        <section class="prods">
            <a href="addProduct.php">ADD PRODUCT</a>
            <br>
            <a href="fetchProducts.php">SHOW PRODUCT</a>
        </section>

        <main>

        </main>

        <?php 
            include "assets/footer.php"
        ?>

    </div>
</body>
</html>