
<?php
session_start();
if (isset($_SESSION['Email_id'])){
	header('location:checkout.php');
	}else{
		
?>
<?php

include("includes/functions.php");
include("includes/db.php");


?>

<!DOCTYPE html>
 
 <html>
 
<head>
<title>Log in Form</title>
</head>

<body>

<?php

include("header.php");


?>

<center>
	<br><br><br><br><br><br><br><br><br><br><br><br>

<form method="POST" action="loginform.php">

Email_id<input type="Email"name="Email_id" required=""/><br>

password<input type="password"name="password" required=""/><br>

<input type="submit" value="login"/>
<input type="reset" value="Clear"/></br>
<a href='signup.php'>Register as a new user </a><br/>
</form>
</center>
</br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br>

  <center> <div class="copyrights_agile">
          <img src="images/pay.jpg" height="100" width="350"  >
						<p> php echo date("Y");?>Greenleaf Nursery Shop. All rights reserved 
        </p>
       </div>
        </center>
</body>
</html>


	<?php
	}
	?>
