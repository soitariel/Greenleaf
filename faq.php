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
              <font color="red"> <?php total_items(); ?></font>&nbsp;
            </li>
        <li><a href="Login.php"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a></li>
            
        </div>
        </div>
        <div id="navigation">
        <nav>
            
           <a href="Index.html">HOME</a>
             <a href="about us.php">ABOUT US</a>
            <a href="products.php">PRODUCTS</a>
            <a href="services.php">SERVICES</a>
            <a href="feedback.php">FEEDBACK</a>
            <a href="faq.php">FAQ</a>
             <a href="contact us.php">CONTACT US</a>
            
            </nav>
            </div>
        </div>
		
		<br><br><br><br><br><br><br><br>
		<center>
		<h1>FREQUENTLY ASKED QUESTIONS</h1>
		
		1. How do I place my order?<br><br>

To place an order you can either telephone us on +254703959145  or +254-700-723220 or drop us an email at greenleafnursery@gmail.com.<br><br>

2. How long does it take to process an order?<br><br>

It normally takes 4 weeks for tomato, cabbage, broccoli, watermelon, kales, and spinach seedlings to be ready for transplanting. For onions, leeks the duration is normally about 5 weeks. For seedlings like peppers (both sweet and hot) and brinjals the transplanting time is about 7 weeks. Order confirmation is usually through payment of a deposit.<br>

3. How do I arrange delivery / collection?<br><br>

We arrange delivery to Nairobi. Upcountry order deliveries are normally made through a courier service for customers who cannot come to Nairobi. For large scale growers the seedlings are normally collected from our farm in their own transport.<br><br>

4. Is the cost of delivery included in the price?<br><br>

Deliver charges are not included in the price and are normally borne by the customer.<br><br>

5. Do we supply to trade customers?<br><br>

Yes we can supply to any agrovet who will partner with us. We also sell direct to small holder farmers and large scale vegetable exporters.
<br><br>
6. What are the ideal conditions for storing young vegetable plants?<br><br>

To prevent young vegetable plant deterioration: unpack immediately upon receipt. Ensure that they do not dry out, but also do not over water. Tender plants should be kept in warm dry area at all times. Transplant within 24 hours of receipt of plants.<br><br>

              <br>  <br>  <br>  <br>  <br>  <br>  <br>

  <center> <div class="copyrights_agile">
          <img src="images/pay.jpg" height="100" width="350"  >
                        <p> <?php echo date("Y");?>Greenleaf Nursery Shop. All rights reserved 
        </p>
       </div>
        </center>