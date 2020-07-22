
<?php
include_once 'connect_db.php';
if(isset($_POST['submit'])){
$Email_Id=$_POST['Email_Id'];
$password=$_POST['password'];
$position=$_POST['position'];
switch($position){
case 'Admin':
$result=mysql_query("SELECT admin_id, Email_Id FROM admin WHERE Email_Id='$Email_Id' AND password='$password'");
$row=mysql_fetch_array($result);
if($row>0){
session_start();
$_SESSION['admin_id']=$row[0];
$_SESSION['Email_Id']=$row[1];
header("location:http://".$_SERVER['HTTP_HOST'].dirname($_SERVER['PHP_SELF'])."/web_admin/index.php");
}else{
$message="<font color=red>Invalid login Try Again</font>";
}
break;


case 'Customer':

$result=mysql_query("SELECT customer_id, Email_Id FROM users WHERE Email_Id='$Email_Id' AND password='$password'");
$row=mysql_fetch_array($result);
if($row>0){
session_start();
$_SESSION['customer_id']=$row[0];
$_SESSION['Email_Id']=$row[1];
header("location:http://".$_SERVER['HTTP_HOST'].dirname($_SERVER['PHP_SELF'])."/getlogin.php");
}else{
$message="<font color=red>Invalid login Try Again</font>";
}
break;



case 'Farmer':
$result=mysql_query("SELECT farmer_id, Email_Id FROM farmer WHERE Email_Id='$Email_Id' AND password='$password'");
$row=mysql_fetch_array($result);
if($row>0){
session_start();
$_SESSION['farmer_id']=$row[0];
$_SESSION['Email_Id']=$row[1];
header("location:http://".$_SERVER['HTTP_HOST'].dirname($_SERVER['PHP_SELF'])."/web_farmer/index.php");
}else{
$message="<font color=red>Invalid login Try Again</font>";
}
break;
}}
echo <<<LOGIN


<!DOCTYPE html>
 
 <html>
 <link rel="stylesheet" href="Style.css">
<head>
<title>Log in Form</title>
</head>

<body>
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
        <li><a href="#">Cart</a></li>
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
            </div>
<center>
    <br><br>   <br>    <br>
    <br>
    <br>
    <br>
   
    <br>
    <center>LOGIN</center>
     
    <br>
	
      <form method="post" action="Login.php">
		 <p><input type="text" name="Email_Id" value="" placeholder="Email_Id"></p>
        <p><input type="password" name="password" value="" placeholder="Password"></p>
		<p><select name="position">
		<option>--Select position--</option>
			<option>Admin</option>
			<option>Customer</option>
			<option>Farmer</option>
			
			</select></p>
        <p class="submit"><input type="submit" name="submit" value="Login">		
<input type="reset" value="Clear"/> </p>

<a href='Signup.php'>Register as a new user </a><br/>
      </form>
    </div>
    </section>
</div>
<br><br>
<div id="footer" align="Center">Greenleaf Nursery Shop</a>. 2020 Copyright All Rights Reserved</div>
</div>
</body>
</html>
LOGIN;
?>

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
