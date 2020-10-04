<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SmokeHouse - Login</title>
    <link rel="stylesheet" href="stylesheets/loginStyle.css">
</head>
<body>
    <div class="container">

        <?php
            session_start();
            
            if(isset($_SESSION['username']))
               header("Location:profile.php"); 
            
            include "assets/headerNav.php"
        ?>

        <main>
            <p>Login to Shop</p>
                <form action="assets/authenticate.php" method="POST">
                    <div class="input"><input type="text" id="username" name="username" placeholder="Username"></div>
                    <div class="input"><input type="password" id="password" name="password" placeholder="Password"></div>
                    <div style="padding-left: 60px;" class="input">
                        <button type="submit" class="button">Login</button>
                    </div>
                </form>
        </main>

        <?php 
            include "assets/footer.php"
        ?>

    </div>
</body>
</html>