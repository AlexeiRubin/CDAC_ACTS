<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="stylesheets/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

    <div class="bodyContainer">

        <?php
            include "assets/headerNav.php"
        ?>

        <main>
            <h2>ADVANCED WEB PROGRAMMING ASSIGNMENT 2</h2>

            <div class="carousel">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">

                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">

                        <div class="item active">
                            <img src="images/carousel1.jpg" alt="carousel1" style="width:100%;">
                            <div class="carousel-caption">
                                <h4>CDAC ACTS</h4>
                            </div>
                        </div>

                        <div class="item">
                            <img src="images/carousel2.jpg" alt="carousel2" style="width:100%;">
                            <div class="carousel-caption">
                                <h4>AWP</h4>
                            </div>
                        </div>
                
                        <div class="item">
                            <img src="images/carousel3.jpg" alt="carousel3" style="width:100%;">
                            <div class="carousel-caption">
                                <h4>ASSIGNMENT 2</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <?php
            include "assets/footer.php"
        ?>

    </div>
</body>
</html>