<?php 

	class Database{
		public  $dbhandle;
		public function __construct(){
			$this->dbhandle = mysqli_connect(DB_HOST, DB_USER_NAME, DB_PASSWORD) or die("Unable to connect to MySQL");
			$select = mysqli_select_db($this->dbhandle,DB_NAME);
		}
		public function get_db(){
			return $this->dbhandle;
		}
	}

 ?>