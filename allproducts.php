
<?php

include("includes/functions.php");
include("includes/db.php");


?>

<link rel="stylesheet" href="Style.css">
<link rel="stylesheet" type="text/css" href="getit.css" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<header>

<title>All Plants</title>
</header>


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
      
      <input type="text" class="search-area" name="user_query" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Type Keywords & Press enter..."/>
      <input type="submit" value="Search" class="search-btn" name="search"/>
    </div>

    </form>
        
           



        </div>
        <div id="user-menu">
        <li><a href="http://localhost/project/cart.php">Cart</a>
          <font color="red"> <?php total_items(); ?></font>&nbsp;</li>

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


    
    

    <?php
    
    if(isset($_GET['cat'])){
    
    $get_id = $_GET['cat'];
    
    $query = "select cat_title from categories where cat_id='$get_id'";
    $run_query = mysqli_query($con,$query);
    
    $row = mysqli_fetch_array($run_query);
    
    $cat = $row['cat_title'];
    
    echo"<span class=current>>$cat</span>";
    
    }
    
    ?>


 </div>
    <div class="left_content">
      <div class="title_box">Categories</div>
      <ul class="left_menu">
        
 <?php 
     getcats(); 
     

 ?>
        
      </ul>
     
<div class="title_box">VARIETY</div>
      <ul class="left_menu">
        

    <?php  getbrands();  ?>


 
</ul>

     
 
      

    </div>
    <!-- end of left content -->
    <div class="center_content">
      <div class="center_title_bar">All Products</div>


<?php  



$get_pro = "select * from products";
    $run_pro = mysqli_query($con,$get_pro);
    


    while($row_pro = mysqli_fetch_array($run_pro)){


        $product_id = $row_pro['prd_id'];
        $product_category = $row_pro['prd_cat'];
        $product_brand = $row_pro['prd_brand'];
        $product_title = $row_pro['prd_title']; 
        $product_price = $row_pro['prd_price'];
        $product_image = $row_pro['prd_img'];
        
   


        echo"
                
                <div class='prod_box'>
        <div class='top_prod_box'></div>
        <div class='center_prod_box'>
          <div class='product_title'><a href='details.php?pro_id=$product_id'>$product_title</a></div>
          <div class='product_img'><a href='details.php?pro_id=$product_id'><img src='images/$product_image' alt='' border='0' width='90' height='110' /></a></div>
          <div class='prod_price'><span class='price'> Ksh $product_price</span></div>
        </div>
        <div class='bottom_prod_box'></div>
        <div class='prod_details_tab'> <a href='allproducts.php?addcart=$product_id' title='header=[Add to cart] body=[&nbsp;] fade=[on]''></a>
          <a href='details.php?pro_id=$product_id' class='prod_details'>Details</a> </div>
      </div>
     


        ";


    }




 ?>

 
  </div>
  
 
    <!-- end of center content -->
<div class="right_content">
      <div class="shopping_cart">
        
	
</body>
</html>
