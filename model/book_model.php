<?php 
	class BookModel extends Model{
		function __construct(){
			 return parent::__construct();
		}
		public function find($book_id){
			$query = "SELECT books.*,image_url  FROM books JOIN images ON books.id = images.book_id WHERE books.id ='".$book_id."'";
			return mysqli_fetch_object(mysqli_query($this->db->get_db(),$query));
		}
		public function search($keywork){
			$query = "SELECT books.*,image_url  FROM books JOIN images ON books.id = images.book_id WHERE books.name LIKE '%".$keywork."%' OR books.description LIKE '%".$keywork."%'";
			return mysqli_query($this->db->get_db(),$query);
		}

		public function buy($book_id,$cart_id,$amount = 1){
			$query = "INSERT INTO book_carts(cart_id,book_id,amount) VALUES ('".$cart_id."','".$book_id."','".$amount."') ON DUPLICATE KEY UPDATE amount = amount + '".$amount."'";
			return mysqli_query($this->db->get_db(),$query);
		}



		public function top_weekend(){
			$query = "SELECT books.*,image_url FROM books JOIN images ON books.id = images.book_id ORDER BY created_at DESC LIMIT 15" ;
			return mysqli_query($this->db->get_db(),$query);
		}


		public function top_seller(){
			$query = "SELECT books.*,image_url FROM books JOIN images ON books.id = images.book_id ORDER BY num_buy DESC LIMIT 15";
			return mysqli_query($this->db->get_db(),$query);
		}

	}

 ?>