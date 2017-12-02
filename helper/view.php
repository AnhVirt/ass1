<?php 
	class View{
		public $user;
		function __construct(){
			if (Session::get("email",true))
			{
				$this->user = Controller::current_user();
				$this->cart = Controller::current_cart($this->user);
			}
		}
		public function render($name,$message = NULL){
			if ($_SERVER['REQUEST_METHOD'] == 'POST')
			{

				include_once 'views/'.$name.'.php';
			}
			else
			{
				include_once 'views/layouts/modal_login.php';
				include_once 'views/'.$name.'.php';
				include_once 'views/layouts/footer.php';
				include_once 'views/layouts/nav_responsive.php';

			}

			
		}
	}
 ?>