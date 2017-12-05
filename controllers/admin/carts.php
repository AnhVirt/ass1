<?php 

	class AdminCarts extends Controller{
		function __construct(){
			parent::__construct();
			if (Session::get('email',true)){
				$this->user = Controller::current_user();
				if ($this->user->admin != '1')
					header('Location: /');
			}
			else
					Session::destroy();
		}


		function index(){
			$carts = new CartModel;
			$carts = $carts->select_all();
			$this->view->render('admin/carts',$carts);
		}
		function accept($cart_id){
			if ($_SERVER["REQUEST_METHOD"] == 'POST'){
				$cart = new CartModel;
				$cart->update_success($cart_id);
				header('Location: /admin/carts/index');
			}
			else
				header('Location : /admin/carts/index');
		}
		function delete($cart_id){
			if ($_SERVER["REQUEST_METHOD"] == 'POST'){
				$cart = new CartModel;
				$cart = $cart->delete_by_admin($cart_id);
				header('Location: /admin/carts/index');

			}
			else
				header('Location : /admin/carts/index');
		}
	}



 ?>