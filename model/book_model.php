<?php 
	class BookModel extends Model{
		function __construct(){
			 return parent::__construct();
		}
		public function find($book_id)
		{
			$query = "SELECT * FROM books WHERE id ='".$book_id."'";
			mysqli_fetch_object(mysqli_query($this->db->get_db(),$query));
		}
		public function buy($book_id,$cart_id,$amount = 1)
		{
			$query = "INSERT INTO book_carts(cart_id,book_id,amount) VALUES ('".$cart_id."','".$book_id."','".$amount."') ON DUPLICATE KEY UPDATE amount = amount + '".$amount."'";
			return mysqli_query($this->db->get_db(),$query);
		}
		public function top_weekend()
		{
			$query = "SELECT TOP 15 * FROM books ORDER BY created_at DESC";
			mysqli_fetch_object(mysqli_query($this->db->get_db(),$query));
		}
		public function top_seller()
		{
			$query = "SELECT TOP 15 * FROM books ORDER BY num_buy DESC";
			mysqli_fetch_object(mysqli_query($this->db->get_db(),$query));
		}

	}

 ?>