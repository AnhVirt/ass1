<?php 
	class BookModel extends Model{
		function __construct(){
			 return parent::__construct();
		}

		function select_all(){
			$query = "SELECT * FROM books";
			return mysqli_query($this->db->get_db(),$query);
		}
		public function find($book_id){
			$query = "SELECT books.*,image_url,image_detail_url  FROM books JOIN images ON books.id = images.book_id WHERE books.id ='".$book_id."'";
			return mysqli_fetch_object(mysqli_query($this->db->get_db(),$query));
		}
		public function search($keywork){
			$query = "SELECT books.*,image_url  FROM books JOIN images ON books.id = images.book_id WHERE books.name LIKE '%".$keywork."%' OR books.description LIKE '%".$keywork."%'";
			return mysqli_query($this->db->get_db(),$query);
		}
		public function insert($name,$description,$author,$price,$sale,$amount = 10,$image_url){
			$query = "INSERT INTO books(name,author,description,price,sale,amount) VALUES ('".$name."','".$author."','".$description."','".$price."','".$sale."','".$amount."')";
			mysqli_query($this->db->get_db(),$query);
			$query = "INSERT INTO images(book_id,image_url) 
			SELECT books.id,'".$image_url."' FROM books ORDER BY created_at DESC LIMIT 1";
			return mysqli_query($this->db->get_db(),$query);
		}
		public function update($book_id,$name,$description,$author,$price,$sale,$amount = 10){
			$query = "UPDATE  books  SET  name = '".$name."',author ='".$author."',description = '".$description."',price = '".$price."',sale = '".$sale."',amount = '".$author."' WHERE books.id ='".$book_id."'";
			return mysqli_query($this->db->get_db(),$query);
		}
		public function delete($book_id){
			$query = "DELETE FROM books  WHERE books.id ='".$book_id."'";
			return mysqli_query($this->db->get_db(),$query);
		}
		public function buy($book_id,$cart_id,$amount = 1){
			$query = "INSERT INTO book_carts(cart_id,book_id,amount) VALUES ('".$cart_id."','".$book_id."','".$amount."') ON DUPLICATE KEY UPDATE amount = amount + '".$amount."'";
			return  mysqli_query($this->db->get_db(),$query);
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