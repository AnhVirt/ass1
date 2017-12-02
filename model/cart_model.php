<?php 

	class CartModel extends Model {
		function __construct(){
			parent::__construct();
		}
		public function  select($user_id){
			$query = "
			SELECT *, (SELECT COALESCE(SUM(book_carts.amount),0)  FROM book_carts WHERE book_carts.cart_id = carts.id) AS total
			FROM carts
			WHERE  carts.user_id = '".$user_id."'
			ORDER BY carts.created_at DESC
			LIMIT 1";
			return mysqli_fetch_object(mysqli_query($this->db->get_db(),$query));
		}

		public function insert($user_id){
			$query = "INSERT INTO carts(user_id) VALUES ('".$user_id."')";
			return mysqli_query($this->db->get_db(),$query);
		}
		public function delete($cart_id,$user_id){
			$query = "DELETE FROM carts WHERE id = '".$cart_id."' AND user_id = '".$user_id."'";
			mysqli_query($this->db->get_db(),$query);
		}
		public function delete_empty_cart($user_id){
			$query = "DELETE FROM carts WHERE  user_id = '".$user_id."' ORDER BY created_at DESC LIMIT 1";
			mysqli_query($this->db->get_db(),$query);
		}
		public function update($cart_id,$user_id,$status,$price){
			$query = "UPDATE carts SET status ='".$status."' AND price_total = '".$price."' WHERE user_id = '".$user_id."' AND id = '".$cart_id."'";
			mysqli_query($this->db->get_db(),$query);
		}



	}



 ?>