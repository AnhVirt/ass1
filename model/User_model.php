<?php 
	class UserModel extends Model{
		function __construct(){
			return parent::__construct();
		}
		public function select($query){
			return mysqli_num_rows(mysqli_query($this->db->get_db(),$query));
		}
		public function insert($query){
			return mysqli_query($this->db->get_db(),$query);
		}
	}

 ?>