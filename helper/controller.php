<?php 
	class Controller {
		function __construct(){
			Session::init();
		 	require 'model/user_model.php';
		 	require 'model/cart_model.php';
		 	require 'model/book_model.php';
			$this->view = new View;
		}
		function error(){
			header('Location: /errors/404',true,301);
		}
		function current_user(){
			global $current_user;
			if (Session::get('email',true))
			{
				$current_user = new UserModel;
				return $current_user->select($_SESSION["email"]);
			}
			else
				return false;
		}
		function current_cart($user){
			global $current_cart;
			if (Session::get('email',true))
			{
				$current_cart = new CartModel;
				return $current_cart->select($user->id);
			}
			else
				return false;
		}
		



	}

 ?>