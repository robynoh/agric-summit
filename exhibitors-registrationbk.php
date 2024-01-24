<?php
require_once("class/class.php");


$connection = new connection();
$connection->connectTodatabase();
$connection->selectDatabase();

 ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exhibitors Registration | Bayelsa State Agriculture Summit</title>
    <!-- favicons Icons -->
    <link rel="apple-touch-icon" sizes="180x180" href="assets/images/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/images/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicons/favicon-16x16.png">
    <link rel="manifest" href="assets/images/favicons/site.webmanifest">
    <meta name="description" content="Azino Charity HTML Template">

    <!-- fonts -->
    <link
        href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/azino-icons.css">
    <link rel="stylesheet" href="assets/css/odometer.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/bootstrap-select.min.css">

    <!-- template styles -->
    <link rel="stylesheet" href="assets/css/main.css">

    <link rel="stylesheet" href="assets/css/rtl.css">
	
	<style>
	
	img{
float: left;
}
 
#display-success
{

border: 1px solid #D8D8D8;
padding: 10px;
border-radius: 5px;
font-family: Arial;
font-size: 11px;
text-transform: uppercase;
background-color: rgb(236, 255, 216);
color: green;
text-align: center;
margin-top: 30px;
}
 
#display-success img
{
position: relative;
bottom: 5px;
}
	
	</style>
</head>

<?php include('includes/header.php'); ?>

  

    <section class="page-header">
            <div class="page-header__bg" style="background-image: url(assets/images/backgrounds/page-header-1-1p.jpg);"></div>
            <!-- /.page-header__bg -->
            <div class="container">
                <h2>Exhibitors Registration</h2>
                <ul class="thm-breadcrumb list-unstyled dynamic-radius" style="background-color:#0CA440">
                    <li><a href="index.html">Home</a></li>
                    <li>-</li>
                    <li><span>Registration</span></li>
                </ul><!-- /.thm-breadcrumb list-unstyled -->
            </div><!-- /.container -->
        </section><!-- /.page-header -->

       
        <section class="blog-details  pb-40">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-8">
					<div class="about-two__image wow fadeInLeft" data-wow-duration="1500ms">
                       <br/>   
                        </div>
                        <!-- /.blog-card__meta -->
<?php if(isset($_GET['status']) && $_GET['status']=="success"){?>
            


 <div id="display-success"><img src="assets/images/ok.png" alt="Success" /> Your information was sent successfully. Thank you for registering to be an exhibitor in the Bayelsa 2021 agric summit</div>

<br/><br/><br/><br/>
<?php }else{?>
<p>
If you are a business owner concerned with growing your business and would fancy making significant exhibitions of your work or products in your area of venture,
 then attending the “ Bayelsa Agric Summit 2021” is the most reliable means for you to do so! So, 
 hasten and register before it's too late. </p>
 <br/>
  
                        <form action="assets/inc/exhibitors-registration.php" class="form-one mb-40" method="POST">
                            <div class="form-group">
							
							 <div class="form-control-full">
                                    <label for="name" class="sr-only">Title</label>
                                    <input type="text" name="title" id="name" placeholder="Title" required>
                                </div><!-- /.form-control -->
							
							 <div class="form-control">
                                    <label for="name" class="sr-only">Firstname</label>
                                    <input type="text" name="firstname" id="name" placeholder="Firstname" required>
                                </div><!-- /.form-control -->
                                <div class="form-control">
                                    <label for="name" class="sr-only">Lastname</label>
                                    <input type="text" name="name" id="name" placeholder="Lastname" required>
                                </div><!-- /.form-control -->
                               
                                <div class="form-control">
                                    <label for="phone" class="sr-only">phone</label>
                                    <input type="text" name="phone" id="phone" placeholder="Phone Number" required>
                                </div><!-- /.form-control -->
								
								<div class="form-control" required>
                                   <select name="sex">
								   <option value="">Gender</option>
								  <option>Male</option>
								   <option>Female</option>
								   </select>
								   </div>
								
                                <div class="form-control">
                                    <label for="businessName" class="sr-only">Business Name</label>
                                    <input type="text" name="businessName" id="businessName" placeholder="Business Name" required>
                                </div><!-- /.form-control -->
								 <div class="form-control">
                                    <label for="businessArea" class="sr-only">Area of business</label>
                                    <input type="text" name="businessArea" id="businessArea" placeholder="Area of business" required>
                                </div><!-- /.form-control -->
								
								 <div class="form-control">
                                    <label for="address" class="sr-only">Address</label>
                                    <input type="text" name="address" id="address" placeholder="Address" required>
                                </div><!-- /.form-control -->
								
								<div class="form-control">
                                    <label for="state" class="sr-only">State</label>
                                    <input type="text" name="state" id="state" placeholder="State" required>
                                </div><!-- /.form-control -->
								
								<div class="form-control form-control-full" required>
                                   <select name="country">
								   <option>Choose Country</option>
								   <?php echo $connection->get_country(); ?>
								   </select>
								   </div>
                               
                                <div class="form-control form-control-full">
                                    <button name="submit" type="submit" class="thm-btn dynamic-radius">Submit</button>
                                    <!-- /.thm-btn dynamic-radius -->
                                </div><!-- /.form-control -->
                            </div><!-- /.form-group -->
                        </form><!-- /.contact-page__form -->
						
<?php }?>
                        <div class="result"></div><!-- /.result -->
                    <!-- /.col-lg-7 -->
                        <div class="blog-details__meta">
                            <ul class="list-unstyled blog-details__category">
                                <li><span>Related Links:</span></li>
                               
                            </ul><!-- /.list-unstyled blog-details__category -->
                           
                        </div><!-- /.blog-details__meta -->
                        <div class="blog-navigations">
                            <a href="why-exhibit">Why Exhibit</a>
                            <a href="who-can-exhibit">Who can Exhibit</a>
							
                        </div><!-- /.blog-navigations -->
                      
                       <!-- /.comment-one -->
                     
                      
                      

                    </div><!-- /.col-md-12 -->
                     <div class="col-md-12 col-lg-4">
                        <div class="blog-sidebar">
                           <img src="assets/images/backgrounds/forms.png" alt="">
                           <br/>
                           
							 
                           
                           
                        </div><!-- /.blog-sidebar -->
                    </div><!-- /.col-md-12 --
                </div><!-- /.row -->
            </div><!-- /.container -->
        </section><!-- /.blog-details -->

       

        




      <?php include('includes/footer.php');?>

    </div><!-- /.page-wrapper -->


    <div class="mobile-nav__wrapper">
        <div class="mobile-nav__overlay mobile-nav__toggler"></div>
        <!-- /.mobile-nav__overlay -->
        <div class="mobile-nav__content">
            <span class="mobile-nav__close mobile-nav__toggler"><i class="far fa-times"></i></span>

            <div class="logo-box">
                <a href="index.html" aria-label="logo image"><img src="assets/images/logo-light.png" width="101"
                        alt="" /></a>
            </div>
            <!-- /.logo-box -->
            <div class="mobile-nav__container"></div>
            <!-- /.mobile-nav__container -->

            <ul class="mobile-nav__contact list-unstyled">
                <li>
                    <i class="azino-icon-email"></i>
                    <a href="mailto:needhelp@azino.com">needhelp@azino.com</a>
                </li>
                <li>
                    <i class="azino-icon-telephone"></i>
                    <a href="tel:666-888-0000">666 888 0000</a>
                </li>
            </ul><!-- /.mobile-nav__contact -->
            <div class="mobile-nav__top">
                <div class="mobile-nav__language">
                    <img src="assets/images/resources/flag-1-1.jpg" alt="">
                    <label class="sr-only" for="language-select">select language</label>
                    <!-- /#language-select.sr-only -->
                    <select class="selectpicker" id="language-select">
                        <option value="english">English</option>
                        <option value="arabic">Arabic</option>
                    </select>
                </div><!-- /.mobile-nav__language -->
                <div class="mobile-nav__social">
                    <a href="#" aria-label="twitter"><i class="fab fa-twitter"></i></a>
                    <a href="#" aria-label="facebook"><i class="fab fa-facebook-square"></i></a>
                    <a href="#" aria-label="pinterest"><i class="fab fa-pinterest-p"></i></a>
                    <a href="#" aria-label="instagram"><i class="fab fa-instagram"></i></a>
                </div><!-- /.mobile-nav__social -->
            </div><!-- /.mobile-nav__top -->



        </div>
        <!-- /.mobile-nav__content -->
    </div>
    <!-- /.mobile-nav__wrapper -->

    <div class="search-popup">
        <div class="search-popup__overlay search-toggler"></div>
        <!-- /.search-popup__overlay -->
        <div class="search-popup__content">
            <form action="#">
                <label for="search" class="sr-only">search here</label><!-- /.sr-only -->
                <input type="text" id="search" placeholder="Search Here..." />
                <button type="submit" aria-label="search submit" class="thm-btn">
                    <i class="fa fa-search"></i>
                </button>
            </form>
        </div>
        <!-- /.search-popup__content -->
    </div>
    <!-- /.search-popup -->

    <script src="assets/js/jquery-3.5.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/jquery.ajaxchimp.min.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/jquery.validate.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/wow.js"></script>
    <script src="assets/js/odometer.min.js"></script>
    <script src="assets/js/jquery.appear.min.js"></script>

    <!-- template js -->
    <script src="assets/js/theme.js"></script>

</body>

</html>