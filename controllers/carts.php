<?php 

	class Carts extends Controller {
		function __construct(){
			parent::__construct();
			if (!Session::get('email',true))
				Session::destroy();

		}
		function checkout(){
			$user = Controller::current_user();
			$carts = Controller::current_cart($user);
			$this->pay_cart = Controller::cart($user->id,$carts->id);
			$this->view->render('carts/checkout');
		}



	}

 ?>