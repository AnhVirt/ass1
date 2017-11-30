<?php 
	class Categories extends Controller {
		function __construct(){
			parent::__construct();
		}

		public function  edit(){

		}
		public function index(){
			$this->view->render( "category/index");
		}


	}
 ?>