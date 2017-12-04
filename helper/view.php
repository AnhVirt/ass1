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
				switch ($name) {

					case 'home/index':
						$this->top_weekend  = Controller::top_weekend();
						$this->top_seller = Controller::top_seller();
						break;

					case 'carts/checkout':
						$this->pay_cart = Controller::cart($this->user->id,$this->cart->id);
						break;
					case 'books/search':
						$this->search = $message;
						break;
					case 'books/show':
						$this->top_weekend  = Controller::top_weekend();
						$this->book= $message;
					default:
						# code...
						break;
				}
				include_once 'views/layouts/modal_login.php';
				include_once 'views/'.$name.'.php';
				include_once 'views/layouts/footer.php';
				include_once 'views/layouts/nav_responsive.php';

			}

			
		}
	}
 ?>