<?php 
	class Home extends Controller{
		function __construct(){
			parent::__construct();
			
		}
		public function index($search = false){
				$this->view->render("home/index");
		}
	}
 ?>