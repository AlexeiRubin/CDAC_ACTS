<header>
        <a href="index.php"><img src="images/smokeHouseLogoHeader.png" alt="Logo for SmokeHouse"></a>
</header>

<nav>
    <a href="index.php">HOME</a>
    <a href="products.php">PRODUCTS</a>
    <a href="about.php">ABOUT</a>
    <a href="contact.php">CONTACT</a>
    <a href="register.php">REGISTER</a>
    <?php
        if(!isset($_SESSION['username']))
                echo "<a href=".'"login.php"'.">LOGIN</a>";
        else
                echo "<a href=".'"logout.php"'.">LOGOUT</a>";
    ?>
 </nav>

 