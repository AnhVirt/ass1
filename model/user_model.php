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
				$query = "SELECT COUNT(*) as count,id FROM users WHERE password = '".$password."' AND email = '".$email."'";
				return mysqli_fetch_object(mysqli_query($this->db->get_db(),$query));
			}
		}
		public function select_all(){
			$query = "SELECT * FROM users";
			return mysqli_query($this->db->get_db(),$query);
		}
		public function insert($email,$password,$first_name,$last_name){
			$query = "INSERT INTO users(email,password,first_name,last_name) VALUES ('".$email."','".$password."','".$first_name."','".$last_name."')";
			return mysqli_query($this->db->get_db(),$query);
		}
		public function update($id,$first_name,$last_name,$phone,$email,$birthday,$address,$avt_url){
			if(empty($avt_url)){
				$query="UPDATE users
						SET 
						email= '".$email."',
						first_name='".$first_name."',
						last_name='".$last_name."',
						birth_day='".$birthday."',
						address='".$address."',
						phone='".$phone."'
						WHERE id='".$id."'";
				return mysqli_query($this->db->get_db(),$query);
			}
			else {
				$query="UPDATE users
						SET 
						email= '".$email."',
						first_name='".$first_name."',
						last_name='".$last_name."',
						birth_day='".$birthday."',
						address='".$address."',
						phone='".$phone."',
						avatar_url='".$avt_url."'
						WHERE  id='".$id."'";
				return mysqli_query($this->db->get_db(),$query);
			}
		}
		public function updatepass($id,$password){
			$query="UPDATE users
						SET 
						password='".$password."'
						WHERE id='".$id."'";
			return mysqli_query($this->db->get_db(),$query);
		}

		public function getCart($current_id){
			$query = "SELECT carts.id as IDCart,users.first_name as FirstName,users.last_name as LastName,carts.action as Action,carts.price_total as PriceTotal,carts.created_at as CreatedAt,carts.update_at as UpdateAt from carts JOIN users ON carts.user_id = users.id WHERE carts.user_id='".$current_id."'";
			return mysqli_query($this->db->get_db(),$query);
		}

		public function delete($user_id){
			$query= "DELETE FROM users WHERE id = '".$user_id."'";
			return mysqli_query($this->db->get_db(),$query);
		}
	}

 ?>