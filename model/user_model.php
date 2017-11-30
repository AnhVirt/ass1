<?php 
	class UserModel extends Model{
		function __construct(){
			return parent::__construct();
		}
		public function select($email,$password = false){
			if ($password == false)
			{
				$query = "SELECT * FROM users WHERE email = '".$email."'";
				return mysqli_fetch_object(mysqli_query($this->db->get_db(),$query));
			}
			else
			{
				$query = "SELECT COUNT(*) FROM users WHERE password = '".$password."' AND email = '".$email."'";
				return mysqli_num_rows(mysqli_query($this->db->get_db(),$query));
			}
		}
		public function insert($email,$password,$first_name,$last_name){
			$query = "INSERT INTO users(email,password,first_name,last_name) VALUES ('".$email."','".$password."','".$first_name."','".$last_name."')";
			return mysqli_query($this->db->get_db(),$query);
		}
	}

 ?>