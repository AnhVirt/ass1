<?php 
	
	class Errors extends Controller{
		function __construct(){
			parent::__construct();
			if (!Session::get('email',true))
				Session::destroy();
		}
		public function error_404(){
				require 'views/layouts/header.php';
				require "views/404/404.html";
				require 'views/layouts/footer.php';
		}


	}
 ?>