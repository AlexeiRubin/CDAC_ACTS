<header>
    <a href="index.php"><img src="images/assignment2HeaderLogo.png" alt="Logo for Assignment 2"></a>
</header>

<nav>
    <a href="index.php">HOME</a>
    <?php
        if(!isset($_SESSION['username']))
                echo "<a href=".'"login.php"'.">LOGIN</a>";
        else
                echo "<a href=".'"logout.php"'.">LOGOUT</a>";
    ?>
    <a href="logout.php">LOGOUT</a>
</nav>