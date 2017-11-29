<?php
	require("/ass1/method_php/login_method.php");
	if($_SERVER["REQUEST_METHOD"] == 'POST')
	{
		session_start();
		if (!isset($_SESSION["token"]))
		{
			$email = $_POST["email"] ;
		}
		else
		{

		}
	}
	else
	{
		header('Location: /ass1/404/404.html',false,301);
	}
	


 ?>