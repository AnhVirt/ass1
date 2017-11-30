<?php


	if($_SERVER["REQUEST_METHOD"] == 'POST')
	{
		if (!isset($_SESSION["email"]))
		{

			$hostname = "localhost";
			$username = "root";
			$password = "";
			$db = "stores";

			$dbhandle = mysqli_connect($hostname, $username, $password) or die("Unable to connect to MySQL");
			$select = mysqli_select_db($dbhandle,'stores');
			$password = md5($_POST["password"]);
			$email =  $_POST["email"];
			$query = "SELECT COUNT(*) FROM users WHERE password = '".$password."' AND email = '".$email."'";
			$result = mysqli_query($dbhandle,$query);
			if (mysqli_num_rows($result) == 1)
			{
				$email = $_POST["email"] ;
				$_SESSION['email'] = $email;
				header('Location: /',true,301);
			}
			else header('Location: /',true,301);

			
		}
		else
		{
			header('Location: /',true,301);
		}
		



		
	}
	else
	{
		header('Location: /views/404/404.html',false,301);
	}
	


 ?>