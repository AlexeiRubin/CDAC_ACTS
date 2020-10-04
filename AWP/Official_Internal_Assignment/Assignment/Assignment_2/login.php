<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="stylesheets/loginStyle.css">
</head>
<body>
    <div class="container">

        <?php
            session_start();
            
            if(isset($_SESSION['username']))
               header("Location:userList.php"); 
            
            include "assets/headerNav.php"
        ?>

        <main>
            <p>Login</p>
                <form action="assets/authenticateUser.php" method="POST">
                    <div class="input"><input type="text" id="username" name="username" placeholder="Username"></div>
                    <div class="input"><input type="password" id="password" name="password" placeholder="Password"></div>
                    <div class="input">
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