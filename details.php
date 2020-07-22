
<?php
include("includes/functions.php");
include "db.php"
?>
<link rel="stylesheet" href="Style.css">
<link rel="stylesheet" type="text/css" href="getit.css" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<div id="wrapper">
    <div id="header">
         <div id="subheader">
              <div class="container">
    <p> Best Online Nursery Store</p>
                  <a href="#">Guest</a>
                    <a href="#">Download App</a>
                    <a href="#">Customer</a>
                    <a href="#">Help</a>
    </div>
</div>
         <div id="main-header">
        <div id="logo">
             <span id="IST"><img src='images/garden shop-mobile logo.png' /> </span >
            
            <span id="IIST">GRE</span><span id="IIIST">ENLEAF</span>
            
            </div>
        <div id="search">
         <form method="get" action="result.php" enctype="multipart/form-data">
  
   <div class="search">
      
      <input type="text" class="search-area" name="user_query" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Search your need"/>
      <input type="submit" value="Search" class="search-btn" name="search"/>
    </div>

    </form>
        
        </div>
        <div id="user-menu">

         <li><a href="cart.php"><img src='image/cart.gif' alt='' border='0' class='left_bt' /> Cart</a>
       
           <font color="red"> <?php total_items(); ?></font>&nbsp;

          
            </li>
        <li><a href="Login.php">Login</a></li>
            
        </div>
        </div>
        <div id="navigation">
        <nav>
            
            <a href="Index.html">HOME</a>
             <a href="about us.php">ABOUT US</a>
            <a href="allproducts.php">ALL PLANTS</a>
            <a href="services.php">SERVICES</a>
            <a href="feedback.php">FEEDBACK</a>
            <a href="faq.php">FAQ</a>
             <a href="contact us.php">CONTACT US</a>
            
            </nav>
  
    <!-- end of left content -->
    <div class="center_content">
     
      
<?php

details();
cart();

?>


<br><br><br><br><br>



     
    <!-- end of center content -->

        <div class="cart_details"><font color="red"><?php Total_items(); ?></font>&nbsp;item(s)<br>
          <span class="border_cart"></span> Total: 
        <div class="cart_icon"><a href="" 

      
   <br><br>
      
      
     
     
     <br /><br /><br /><br />
     
     
    
    <!-- end of right content -->
  </div>
  <!-- end of main content -->
  <center>
  <div class="footer">
    
    <div class="center_footer"> All Rights Reserved 2020<br />
      
      
</div>
</center>
<!-- end of main_container -->
</body>
</html>
