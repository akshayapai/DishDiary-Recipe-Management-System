<?php include('includes/dbconnection.php'); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>DishDiary | About</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>

<body>
    <!-- Preloader -->
<?php include_once('includes/topbar.php');?>

    <!-- ##### Header Area Start ##### -->
    <!-- ##### Header Area Start ##### -->
       <?php include_once('includes/header.php');?>
    <!-- ##### Header Area End ##### -->
    
    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb1.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-text text-center">
                        <h2>About us</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### About Area Start ##### -->
    <section class="about-area section-padding-80">
        <div class="container">
            <div class="row">
                <div class="col-12">
                                        <?php
$ret=mysqli_query($con,"select * from tblpages where PageType='aboutus' ");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {
?>
                </div>
            </div>

            <div class="row">
                <div class="col-12">

                    <h6 class="sub-heading pb-5"> <div style="text-align: center;"><b><font size="6">Welcome to DishDiary</font></b></div><div style="text-align: left;">
                    <div>A place where passion meets the plate! We're your culinary companion, dedicated to making cooking a breeze. Whether you're a seasoned chef or a kitchen newbie, our user-friendly recipe management portal helps you discover, organize, and share recipes effortlessly. Join us in celebrating the joy of cooking and building a community where food enthusiasts unite!</div>
                    <div><br></div>
                    <div>At DishDiary, we're not just about recipes; we're about creating memorable experiences in your kitchen. Our platform goes beyond the basics, offering meal planning tools, grocery lists, and a vibrant community to connect with fellow food lovers. Embrace the art of cooking with us, where every dish tells a story and every click brings you closer to culinary excellence. Welcome to a world where your kitchen dreams come to life!</div>
                </div><div style="text-align: left;"><p class="bodytext" style="margin-bottom: 10px; color: rgb(33, 37, 41); line-height: 1.5; font-family: " open="" sans",="" sans-serif;="" font-size:="" 14px;"=""><br></p></div></h6>

                   <?php } ?> 

                </div>
            </div>

  


        </div>
    </section>
    <!-- ##### About Area End ##### -->


    <!-- ##### Contact Area End ##### -->

    <!-- ##### Follow Us Instagram Area Start ##### -->
    <div class="follow-us-instagram">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h5>Gallery</h5>
                </div>
            </div>
        </div>
        <!-- Instagram Feeds -->
        <div class="insta-feeds d-flex flex-wrap">
            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta1.jpg" alt="">
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta2.jpg" alt="">
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta3.jpg" alt="">
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta4.jpg" alt="">
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta5.jpg" alt="">
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta6.jpg" alt="">
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta7.jpg" alt="">
            </div>
        </div>
    </div>
    <!-- ##### Follow Us Instagram Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
 <?php include_once('includes/footer.php');?>

    <!-- ##### All Javascript Files ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>

</html>