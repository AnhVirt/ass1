<?php 

	class BookCartModel extends Model{
		function __construct(){
			 return parent::__construct();
		}
		function get_all($user_id,$cart_id){
			$query = "SELECT books.*,book_carts.amount as total,image_url
			FROM books JOIN book_carts JOIN carts JOIN images
			ON books.id = book_carts.book_id 
			AND book_carts.cart_id = carts.id
			AND images.book_id = books.id 
			AND carts.id = '".$cart_id."' 
			AND carts.user_id = '".$user_id."'";
			return mysqli_query($this->db->get_db(),$query);
		}
		function delete($book_id,$cart_id){
			$query= "DELETE FROM book_carts WHERE book_id = '".$book_id."' AND cart_id = '".$cart_id."';";
			mysqli_query($this->db->get_db(),$query);
			$query = "SELECT * FROM carts WHERE carts.id = '".$cart_id."'";
			$result = mysqli_query($this->db->get_db(),$query);
			return mysqli_fetch_object($result);
		}
	}


 ?>