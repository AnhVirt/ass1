<?php 
	class Controller {
		function __construct(){
			Session::init();
		 	require 'model/user_model.php';
		 	require 'model/cart_model.php';
		 	require 'model/book_model.php';
		 	require 'model/book_cart_model.php';
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
		function top_weekend(){
			$book = new BookModel;
			return $book->top_weekend();
		}
		function top_seller(){
			$book = new BookModel;
			return $book->top_seller();
		}
		function cart($user_id,$cart_id){
			$cart = new BookCartModel;
			return $cart->get_all($user_id,$cart_id);
		}
		function changeInfoUser($id,$first_name,$last_name,$phone,$email,$birthday,$address,$avt_url){
			$user=new UserModel;
			return $user->update($id,$first_name,$last_name,$phone,$email,$birthday,$address,$avt_url);
		}
		function changePassUser($id,$password){
			$user=new UserModel;
			return $user->updatepass($id,$password);
		}
		function getMycart($current_id){
			$user= new UserModel;
			return $user->getCart($current_id);
		}

	}

 ?>