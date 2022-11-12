<?php

include('../database/dbcon.php');

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Categories | Winkelen</title>

    <!-- Css File -->
    <link rel="stylesheet" href="../css/category.css">

    <!-- font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
        integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Favicon -->
    <link rel="shortcut icon" href="../images/index/favicon.png.ico" type="image/x-icon">

</head>

<body>

        <!-- header start -->
 <header class="header">
    <div class="head-container">
        <div class="row v-center">
            <div class="header-item item-left">
                <div class="logo">
                    <a href="../index.php">Winkelen</a>
                </div>
            </div>
            <!-- menu start here -->
            <div class="header-item item-center">
                <div class="menu-overlay">
                </div>
                <nav class="menu">
                    <div class="mobile-menu-head">
                        <div class="go-back"><i class="fa fa-angle-left"></i></div>
                        <div class="current-menu-title"></div>
                        <div class="mobile-menu-close">&times;</div>
                    </div>
                   
                       <!-- Home section -->

                    <ul class="menu-main">

                        <li>
                            <a href="../index.php">Home</i></a>
                        </li>

                            <!-- Fashion Section -->

                        <li class="menu-item-has-children">
                            <a href="../html/product-list.html">Fashion</a>
                        </li>

                            <!-- Categories -->
                        <li class="menu-item-has-children">
                            <a href="../html/category.php">Categories</a>
                        </li>

                          <!-- Contact -->
                        <li>
                            <a href="../html/login.php">Login</a>
                        </li>
                    </ul>
                </nav>
            </div>
           
            <!-- menu end here -->
            <div class="header-item item-right">
                <a href="#"><i class="fas fa-search"></i></a>
                <a href="#"><i class="far fa-heart"></i></a>
                <a href="#"><i class="fas fa-shopping-cart"></i></a>
                <!-- mobile menu trigger -->
                <div class="mobile-menu-trigger">
                    <span></span>
                </div>
            </div>
        </div>
    </div>
</header>

    <div class="container">
        <h3 class="title">Categories</h3>

        <div class="product-container">

        <?php
        $result= mysqli_query($conn, "SELECT * FROM category");
        while($row=mysqli_fetch_array($result)){
        ?>

            <a href="<?php printf('%s?category=%s','./product-list.php',$row['category_name']); ?>">
                <div class="product">
                    <img src="../images/category/books.jpg" alt="">
                    <h3><?php echo $row['category_name']; ?></h3>
                </div>
            </a>

            <?php } ?>
            
        </div>

    </div>

    <footer class="section-p1">
        <div class="col">
            <div class="logoicon">
                <img class="logo" src="../images/index/logo.png" height="250" alt="">
            </div>
            <h4>Contact</h4>
            <p><strong>Address: </strong> Grand Trunk Road Near Khadina More, Dharampur, Chinsurah R S, Chinsurah, West
                Bengal 712101</p>
            <p><strong>Phone: </strong>+918101777737</p>
            <p><strong>Hours: </strong>24/7</p>
            <div class="follow">
                <h4>Follow Us</h4>
                <div class="icon">
                    <i class="fa-brands fa-facebook-f"></i>
                    <i class="fa-brands fa-twitter"></i>
                    <i class="fa-brands fa-instagram"></i>
                    <i class="fa-brands fa-pinterest-p"></i>
                    <i class="fa-brands fa-youtube"></i>
                </div>
            </div>
        </div>
        <div class="col">
            <h4>About</h4>
            <a href="../html/about.php">About Us</a>
            <a href="#">Delivery Information</a>
            <a href="#">Privacy Policy</a>
            <a href="#">Terms & Conditions</a>
            <a href="../html/contactUs.php">Contact Us</a>
        </div>
        <div class="col">
            <h4>My Account</h4>
            <a href="../html/form.html">Sign In</a>
            <a href="#">View Cart</a>
            <a href="#">My Wishlist</a>
            <a href="#">Track My Order</a>
            <a href="../html/contactUs.php">Help</a>
        </div>
        <div class="col install">
            <h4>Install App</h4>
            <p>From App Store or Google Play</p>
            <div class="row">
                <img src="../images/index/app.jpg" alt="">
                <img src="../images/index/play.jpg" alt="">
            </div>
            <p>Secured Payment Gateways</p>
            <img src="../images/index/pay.png" alt="">
        </div>

        <div class="copyright">
            <p>&copy; Winkelen 2022 All rights reserved</p>
        </div>

    </footer>
</body>

</html>