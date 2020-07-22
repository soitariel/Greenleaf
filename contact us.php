<!Doctype html>
<html>
<title>Contact Us</title>
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="author" content="">
        <meta name="description" content="">
        <meta name="keywords" content="">
    <link rel="stylesheet" href="Style.css">
	
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
	
	<!--THEME CSS-->
        <link href="css/jquery.fancybox.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/owl.carousel.css" rel="stylesheet" type="text/css"/>
        <link href="css/theme.css" rel="stylesheet" type="text/css"/>

	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
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
      
      <input type="text" class="search-area" name="user_query" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Type Keywords & Press enter..."/>
      <input type="submit" value="Search" class="search-btn" name="search"/>
    </div>

    </form>
        </div>
        <div id="user-menu">
        <li><a href="cart.php"><img src='images/cart.gif' alt='' border='0' class='left_bt' /> Cart</a>
            <span id="cart_count" class="text-warning bg-light">0</span>
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
	
		
                <section class="countact-us mb-5" id="contact-us">
                    <h3 class="text-uppercase mb-5">CONTACT FORM</h3>
                    <div class="row justify-content-between">
                        <div class="col-12 col-md-3 mb-0">
                            <form action="#" method="POST" class="contact-form">
                                <div class="form-group">

								FirstName   <input name="FirstName" type="text"  required/><br>
                                    
                                    
                                    <label for="email" class="text-uppercase">Email adDresS:</label>
                                    <input type="email" name="email" class="form-control" id="email">
                                    <div class="error-msg"></div>
                                </div>
                                <div class="form-group">
                                    <label for="message" class="text-uppercase">YOUR MESSAGE:</label>
                                    <textarea name="message" class="form-control" id="message" rows="5" cols="4"></textarea>
                                    <div class="error-msg"></div>
                                </div>
                                <button type="submit" class="form-submit text-uppercase text-white">send</button>
                            </form>
                        </div>
                        <div class="col-12 col-md-5" style="font-family: 'SocialGothic', sans-serif;">
                            <p class="text-uppercase">
                                <strong>Address:</strong><br> 
                                Moi Avenue , Nairobi ,Kenya
                            </p>
                            <p class="text-uppercase mb-0"><strong> Phone 1:</strong>(+254)703959145</p>
                            <p class="text-uppercase"><strong>Phone 2:</strong>(+254)796320685</p>
                            <p class="text-uppercase"><strong>E-mail:</strong>greenleaf@gmail.com</p>
							<p class="text-uppercase">
                                <strong>Customer Care:</strong> <br> 
                                24/7
                            </p>
                            <p class="text-uppercase">
                                <strong>Opening Time:</strong> <br> 
                                Monday-Friday : 8:00 AM to 7:00  PM <br>
                                Sunday : Closed
                            </p>
                            <strong>Current Time:</strong><br>
                             <span id="txt"></span> 
                <script> window.onload=function(){getTime();} function getTime(){ var today=new Date(); var h=today.getHours(); var m=today.getMinutes(); var s=today.getSeconds(); // add a zero in front of numbers<10 m=checkTime(m); s=checkTime(s); document.getElementById('txt').innerHTML=h+":"+m+":"+s; setTimeout(function(){getTime()},1000); } //setInterval("getTime()",1000);//another way function checkTime(i){ if (i<10){ i="0" + i; } return i; } </script> 
                    <script>
                        var today=new Date();
                        document.getElementById('txt').innerHTML=today;
                    </script>
                        </div>
                    </div>
                </section>
				        <script>

            $('.contact-form').validate({

                highlight: function (element) {
                    $(element).closest('.form-group').addClass('has-danger').removeClass('has-success');
                    $(element).addClass('form-control-danger').removeClass('form-control-success');
                },

                unhighlight: function (element) {
                    $(element).closest('.form-group').addClass('has-success').removeClass('has-danger');
                    $(element).removeClass('form-control-danger').addClass('form-control-success');
                },
                errorElement: 'p',
                errorPlacement: function (error, element) {
                    error.appendTo(element.closest(".form-group").find(".error-msg"));
                },
                rules: {
                    email: {
                        required: true,
                        email: true
                    },
                    name: {
                        required: true,
                        rangelength: [3, 20]
                    },
                    message: {
                        required: true,
                        rangelength: [10, 255]
                    },
                    surname: {
                        required: true,
                        rangelength: [3, 20]
                    }
                },
                messages: {
                    email: {
                        required: 'The Email is required field',
                        email: 'Please enter valid email address'
                    },
                    name: {
                        required: 'The Name field is required',
                        rangelength: 'Name must be between 3 and 20 character long'
                    },
                    message: {
                        required: 'The Message field is required',
                        rangelength: 'Message must be between 10 and 255 character long'
                    },
                    surname: {
                        required: 'The Surname field is required',
                        rangelength: 'Surname must be between 3 and 20 character long'
                    }
                }

            });

        </script>
		<br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  

  <center> <div class="copyrights_agile">
          <img src="images/pay.jpg" height="100" width="350"  >
                        <p> <?php echo date("Y");?>Greenleaf Nursery Shop. All rights reserved 
        </p>
       </div>
        </center>
    </body>
</html>
