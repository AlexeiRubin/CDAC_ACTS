<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Users</title>
    <link rel="stylesheet" href="stylesheets/userListStyle.css">
</head>
<body>
    <div class="container">

        <?php
            include "assets/headerNav.php"
        ?>

        <main>
            <div class="usersContainer" id="usersContainer">
                <table>
                    <thead>
                        <tr>
                            <th>USERNAME</th>
                            <th>EMAIL</th>
                            <th>PHONE_NO</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php
                        include 'assets/databaseConnection.php';

                        $sql = "SELECT * FROM users";

                        $result = mysqli_query($connection, $sql);

                        $username = "";
                        $email = "";
                        $phoneNo = "";

                        while($row = mysqli_fetch_array($result)) {
                            $username = $row['username'];
                            $email = $row['email'];
                            $phoneNo = $row['phone_no'];
                            echo "<tr>";
                            echo "<td>$username</td>";
                            echo "<td>$email</td>";
                            echo "<td>$phoneNo</td>";
                            echo "</tr>";
                        }
                    ?>
                    </tbody>
                </table>
            </div>
        </main>

        <?php
            include "assets/footer.php"
        ?>

    </div>
</body>
</html>