<?php 
	class Controller {
		function __construct(){
			Session::init();
			$this->view = new View;
		}
		function error(){
			header('Location: /errors/404',true,301);
		}




	}

 ?>