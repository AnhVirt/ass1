<?php 
	$hostname = "localhost";
	$username = "root";
	$password = "";
	$db = "stores";

	$dbhandle = mysqli_connect($hostname, $username, $password) or die("Unable to connect to MySQL");
	$select = mysqli_select_db($dbhandle,'examples');
	$password = md5($_POST["password"]);
	$query = 'SELECT * FROM users WHERE password = $password';
	$result = mysqli_query($dbhandle,$query);
	echo $result;


 ?>