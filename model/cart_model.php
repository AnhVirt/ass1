<?php 

	class CartModel extends Model {
		function __construct(){
			parent::__construct();
		}
		public function  select($user_id){
			$query = "
			SELECT *, (SELECT COALESCE(SUM(book_carts.amount),0) AS total  FROM book_carts WHERE book_carts.cart_id = carts.id) AS total
			FROM carts
			WHERE  carts.user_id = '".$user_id."'
			ORDER BY carts.created_at DESC
			LIMIT 1";
			return mysqli_fetch_object(mysqli_query($this->db->get_db(),$query));
		}
		public function select_all(){
			$query = "SELECT carts.*,carts.id as cart_id,users.* FROM carts JOIN users ON carts.user_id = users.id ";
			return mysqli_query($this->db->get_db(),$query);


		}

		public function insert($user_id){
			$query = "INSERT INTO carts(user_id) VALUES ('".$user_id."')";
			return mysqli_query($this->db->get_db(),$query);
		}
		public function delete($cart_id,$user_id){
			$query = "DELETE FROM carts WHERE id = '".$cart_id."' AND user_id = '".$user_id."'";
			return mysqli_query($this->db->get_db(),$query);
		}
		public function delete_by_admin($cart_id){
			$query = "DELETE FROM carts WHERE id = '".$cart_id."'";
			return mysqli_query($this->db->get_db(),$query);
		}
		public function delete_empty_cart($user_id){
			$query = "DELETE FROM carts WHERE  user_id = '".$user_id."' ORDER BY created_at DESC LIMIT 1";
			return mysqli_query($this->db->get_db(),$query);
		}
		public function update($cart_id,$user_id,$status){
			$query = "UPDATE carts SET action ='".$status."' WHERE user_id = '".$user_id."' AND id = '".$cart_id."'";
			return mysqli_query($this->db->get_db(),$query);
		}
		public function update_success($cart_id,$status = 'success'){
				$query = "UPDATE carts SET action ='".$status."' WHERE  id = '".$cart_id."'";
			return mysqli_query($this->db->get_db(),$query);
		}


	}



 ?>