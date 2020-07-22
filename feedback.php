<?php

include("includes/functions.php");
include("includes/db.php");


?>

<!Doctype html>
<html>
<title>Give Feedback</title>
<head>
    <link rel="stylesheet" href="Style.css">
	</head>
<body>
    <div id="wrapper">
    <div id="header">
         <div id="subheader">
              <div class="container">
    <p><i class="fa fa-phone" style="font-size:28px"></i> Call Tel: +254703959145 | Best Online Nursery Store.Delivered!</p>
                  
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
        <li><a href="cart.php"><img src='images/cart' alt='' border='0' class='left_bt' /> Cart</a>
            
             <font color="red"> <?php total_items(); ?></font>&nbsp;</li>
            </li>
        <li><a href="Login.php"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a></li>
            
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
            </div>
        </div>
		
		<br><br><br><br><br><br><br><br>
		<center>
		<h1>Give Your Feedback</h1>
	 <form  method="POST" action="comment.php">
	 <div class="container">
	 FirstName<input name="FirstName" type="text"  required/><br>
	  LastName <input name="LastName" type="text"  required/><br>
	 County<input name="County" type="text" placeholder="Enter your county" required/><br>
	 Subject <input name="Subject" type="text"  required/><br>
	
	 Feedback<label for="in"></label> <br>
	 <textarea class="textarea" name="Message"></textarea required><br>
	  Contacts<input name="Contacts" type="number" required/><br>
		 <input type="submit" name="send" value="Send" />
	      <input type="reset" name="reset" value="Refresh" />
</div>
	    </form></center>
			  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  

  <center> <div class="copyrights_agile">
          <img src="images/pay.jpg" height="100" width="350"  >
                        <p> <?php echo date("Y");?>Greenleaf Nursery Shop. All rights reserved 
        </p>
       </div>
        </center>