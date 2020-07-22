<?php


$hostname = "localhost";

$user = "root";

$password = "";

$database = "greenleaf";

$db = mysql_connect($hostname,$user,$password) or die("Connection Failed........!!!");

mysql_select_db($database,$db) or die("Database not selected....!!!");


$fn = $_POST['fname'];

$ln = $_POST['lname'];

$gen = $_POST['g'];

$cno = $_POST['contact'];

$eid = $_POST['email'];

$pass =md5( $_POST['c_password']);

$pass2 = md5($_POST['password']);

if($pass === $pass2)
{
	
$query = "INSERT INTO signup (FirstName, LastName, Gender, ContactNo, EmailId, password) VALUES('".$fn."', '".$ln."', '".$gen."', '".$cno."', '".$eid."', '".$pass."')";

mysql_query($query,$db) or die("<h2 style = 'color:red;'> This Email id Already Has been Registered........</h2>");

header("location:Login.php");

}
else
{
echo "<h2 style = 'color:red;'> Sorry Your Password Dont Match, Please Try again.</h2>";	
}


mysql_close($db);

?>
