<?php 
 	require_once 'model/user_model.php';
	class Controller {
		function __construct(){
			Session::init();
			$this->view = new View;
		}
		function error(){
			header('Location: /errors/404',true,301);
		}
		function current_user(){
			if (Session::get('email',true))
			{
					$current_user = new UserModel;
					return $current_user->select($_SESSION["email"]);
					
			}
		}
		



	}

 ?>