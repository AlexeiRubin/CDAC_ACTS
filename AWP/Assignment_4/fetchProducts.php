<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SmokeHouse - Products</title>
    <link rel="stylesheet" href="stylesheets/productStyle.css">
</head>

<body>
    <div class="container">
        
        <?php
            include "assets/headerNav.php";
        ?>

        <main>
            <div class="productsContainer" id="productsContainer"></div>
            <?php
                include 'assets/databaseConnection.php';

                $sql = "SELECT * FROM products";

                $result = mysqli_query($connection, $sql);

                $productname = "";
                $price = "";
                $productweight = "";

                while($row = mysqli_fetch_array($result)) {
                    $productname = $row['productname'];
                    $price = $row['price'];
                    $productweight = $row['productweight'];
                    echo "<div class=".'"product"'.">";
                    echo "<h4>$productname</h4>";
                    echo "<p>$price</p>";
                    echo "<p>$productweight</p>";
                    echo "</div>";
                }
            ?>
        </main>

       <?php 
            include "assets/footer.php"
        ?>

    </div>
</body>

</html>