<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SmokeHouse - Register</title>
    <link rel="stylesheet" href="stylesheets/registerStyle.css">
    <script src="scripts/registerData.js"></script>
</head>

<body>
    <div class="container">

        <?php 
            include "assets/headerNav.php"
        ?>

        <main>
            <p>Register</p>
            <form action="assets/registerUser.php" method="POST">
                <div class="input"><input type="text" id="username" name="username" placeholder="Username"></div>
                <div class="input"><input type="password" id="password" name="password" placeholder="Password"></div>
                <div class="input"><input type="password" id="confirmPassword" name="confirmPassword" placeholder="Re-Enter Password"></div>
                <div class="input"><label for="gender"></label>
                    <input type="radio" id="male" name="gender" value="Male">Male
                    <input type="radio" id="female" name="gender" value="Female">Female
                    <input type="radio" id="trans" name="gender" value="Trans">Trans</div>
                <div class="input"><input type="email" id="emailId" name="emailId" placeholder="Email Id"></div>
                <div class="input"><input type="text" id="phoneNumber" name="phoneNumber" placeholder="Phone Number"></div>
                <div class="input"><input type="text" id="dateOfBirth" name="dateOfBirth" onfocus="(this.type='date')"
                        placeholder="Date of Birth" min="1990-01-01" max="2022-01-01"></div>
                <div class="input" style="padding-right: 60px;"><button type="submit" class="button">Register</button></div>
            </form>
        </main>

        <?php 
            include "assets/footer.php"
        ?>

    </div>
</body>

</html>