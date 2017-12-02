<?php 

	class Carts extends Controller {
		function __construct(){
			parent::__construct();
			if (!Session::get('email',true))
				Session::destroy();

		}
		function checkout(){
			$this->view->render('cart/checkout');
		}



	}

 ?>