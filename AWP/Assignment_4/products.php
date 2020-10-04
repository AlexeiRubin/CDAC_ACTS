<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SmokeHouse - Products</title>
    <link rel="stylesheet" href="stylesheets/productStyle.css">
    <script src="scripts/products.js"></script>
</head>

<body>
    <div class="container">

        <?php 
            include "assets/headerNav.php"
        ?>

        <section class="prods">
            <a onclick="showProducts()">PRODUCTS</a>
        </section>

        <main>
            <div class="productsContainer" id="productsContainer"></div>
        </main>

       <?php 
            include "assets/footer.php"
        ?>

    </div>
</body>

</html>