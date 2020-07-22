
<?php

include("includes/functions.php");
include("includes/db.php");

cart();
?>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script src="main.js"></script>
<?php

include("header.php");

?>


  
    

    <?php
	session_start();
    
    if(isset($_GET['cat'])){
    
    $get_id = $_GET['cat'];
    
    $query = "select cat_title from categories where cat_id='$get_id'";
    $run_query = mysqli_query($con,$query);
    
    $row = mysqli_fetch_array($run_query);
    
    $cat = $row['cat_title'];
    
    echo"<span class=current>>$cat</span>";
    
    }
    
    ?>



    <div class="left_content">
      <div class="title_box">Categories</div>
      <ul class="left_menu">
        
 <?php 
     getcats(); 
     

 ?>
        
      </ul>
     
<div class="title_box">Variety</div>
      <ul class="left_menu">
        

    <?php  getbrands();  ?>


 
</ul>
 <br>
 <br>

     
      <div class="banner_adds"> <a href="#"><img src="images/bann2.jpg" alt="" border="0" /></a> </div>
      
           <br>
 <br>
 <br>
     
 
        <?php

         special();

        ?>

    </div>
    <!-- end of left content -->
    <div class="center_content">
      <div class="center_title_bar">Selected Products</div>
  
 <form action="" enctype="multipart/form-data" method="post">
 
 <table align="center" width="500" border="0">
 
 

<tr align="center">
  <th>Remove</th>
  <th>Product(s)</th>
  <th name="qty">Quantity </th>
  <th>Total Price</th>
</tr>
 
 <?php
 
 
         $total = 0;
   global $con;

   $ip = getip();

   $price = "select * from cart where ip_add = '$ip'";

   $run_price = mysqli_query($con,$price) ;

   while($pprice = mysqli_fetch_array($run_price)){

      $pro_id = $pprice['p_id'];
      
      $prod_price = "select * from products where prd_id = '$pro_id'";

      $run_pro_price = mysqli_query($con,$prod_price);


      while($ppprice = mysqli_fetch_array($run_pro_price)){

         $product_price = array($ppprice['prd_price']);
         $product_title = $ppprice['prd_title'];
         $product_image = $ppprice['prd_img'];
         $single_price = $ppprice['prd_price'];
         

         $price_sum = array_sum($product_price);

         $total +=$price_sum;

         //echo  $product_price;
     
 ?>
 
 <tr align="center">
   
   <td><input type="checkbox" name="remove[]" value="<?php echo $pro_id;  ?>"></td>
   <td><?php echo $product_title; ?>
    <br>
    <img src="images/<?php echo $product_image; ?>" width="60" height="60"></td>
   <td>
   
   <input type="text" size="4" name="qty">
   </td>
   <td>
   <?php echo "Ksh".$single_price;  ?>
   </td>
  
   <td></td>  
   
 
 </tr>
 
 
 <?php
 
 }
   }
 ?>
 
  <tr align="right">
   <td colspan="4"><b>Sub total:</b></td>
   <td><?php echo"Ksh&nbsp;".$total;   ?></td>
   
   </tr>
   
   
   <tr align="center">
   
   <td colspan="2"><input type="submit" name="update_cart" value="Update cart"></td>
   

   

   <td>


    <button><a href="http://localhost/project/allproducts.php" style="text-decoration:none;color:black">Continue Shopping</a></button>

  </td>

  <td>

 
        <div class="pro-box">
          
            <div class="body">
                <h5><?php echo $row['prd_title']; ?></h5>
                <h6>Price: <?php echo '$'.$row['price'].' '.PAYPAL_CURRENCY; ?></h6>
        
                <!-- PayPal payment form for displaying the buy button -->
                <form action="<?php echo PAYPAL_URL; ?>" method="post">
                    <!-- Identify your business so that you can collect the payments. -->
                    <input type="hidden" name="business" value="<?php echo PAYPAL_ID; ?>">
          
                    <!-- Specify a Buy Now button. -->
                    <input type="hidden" name="cmd" value="_xclick">
          
                    <!-- Specify details about the item that buyers will purchase. -->
                    <input type="hidden" name="item_name" value="<?php echo $row['name']; ?>">
                    <input type="hidden" name="item_number" value="<?php echo $row['id']; ?>">
                    <input type="hidden" name="amount" value="<?php echo $row['price']; ?>">
                    <input type="hidden" name="currency_code" value="<?php echo PAYPAL_CURRENCY; ?>">
          
                    <!-- Specify URLs -->
                    <input type="hidden" name="return" value="<?php echo PAYPAL_RETURN_URL; ?>">
                    <input type="hidden" name="cancel_return" value="<?php echo PAYPAL_CANCEL_URL; ?>">
          
                    <!-- Display the payment button. -->
                    <input type="image" name="submit" border="0" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif">
                </form>
            </div>
        </div>
  




    </td>
   
   </tr>

 </table>
 
 
 
 </form>


 <?php
 
 $ip = getip();
 

 
 if(isset($_POST['update_cart'])){
 
   foreach($_POST['remove'] as $remove){
   
       $delete_product = "delete from cart where p_id='$remove' AND ip_add='$ip'";
       $run_delete = mysqli_query($con, $delete_product);
       echo $ip;
       if($run_delete){
       
         echo "<script>window.open('cart.php','_self')</script>"    ;  
       
       }
   
   }
 
 }
 
 ?>
 
 
 </div>
    <!-- end of center content -->
<div class="right_content">
      <div class="shopping_cart">
        <div class="cart_title"><i>Welcome Guest!</i><br>Shopping cart</div>
        <div class="cart_details"><font color="blue"><?php total_items(); ?></font>&nbsp;items <br />
          <span class="border_cart"></span> Total:<span class="price"><?php total_price(); ?> </span> </div>
        <div class="cart_icon"><a href="cart.php" title="header=[Checkout] body=[&nbsp;] fade=[on]"><img src="images/shoppingcart.png" alt="" width="48" height="48" border="0" /></a></div>
      </div>
      
       
       <br>
     
            <?php
 
            special();

           ?> 

        <br>
     
 
        <?php

         special();

        ?>
        
             <br>
     
 
        <?php

         special();

        ?>
     <br>
     
 
        <?php

         special();

        ?>


      
        <!-- end of right content -->
</div>

</div>

</body>
</html>
