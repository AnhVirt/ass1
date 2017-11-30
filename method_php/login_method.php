<?php 
	session_start();
	$hostname = "localhost";
	$username = "root";
	$password = "";
	$db = "stores";
	$dbhandle = mysqli_connect($hostname, $username, $password) or die("Unable to connect to MySQL");
	$select = mysqli_select_db($dbhandle,'stores');
	$email = $_POST["email"];
	$password = md5($_POST["password"]);
	$query = "SELECT * FROM users WHERE password = '".$password."' AND email = '".$email."'";
	$result = mysqli_query($dbhandle,$query);
	if (mysqli_num_rows($result) == 1)
	{
		if (!isset($_SESSION['email']))
		{
			$_SESSION['email'] = $email;
			header('Location: /ass1/index/index.php',true,301);
		}
		else
		{
			header('Location: /ass1/index/index.php',true,301);
		}
		
	}
 	else
 		header('Location: /ass1/index/index.php',true,301);
 ?>	
