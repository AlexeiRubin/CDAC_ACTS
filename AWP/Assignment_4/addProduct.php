<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SmokeHouse - Add Product</title>
    <link rel="stylesheet" href="stylesheets/addProductStyle.css">
</head>
<body>
    <div class="container">

        <?php
            include "assets/headerNav.php"
        ?>

        <main>
            <p>Add a Product</p>
                <form action="assets/storeProducts.php" method="POST">
                    <div class="input"><input type="text" id="productname" name="productname" placeholder="Product Name"></div>
                    <div class="input"><input type="text" id="price" name="price" placeholder="Price"></div>
                    <div class="input"><input type="text" id="productweight" name="productweight" placeholder="Weight"></div>
                    <div style="padding-left: 60px;" class="input">
                        <button type="submit" class="button">Add</button>
                    </div>
                </form>
        </main>

        <?php 
            include "assets/footer.php"
        ?>

    </div>
</body>
</html>