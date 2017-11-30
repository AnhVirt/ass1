<?php 
	class Categories extends Controller {
		function __construct(){

			parent::__construct();
		}

		public function  edit(){

		}
		public function index(){
			require "views/category/index.php";
		}


	}
 ?>