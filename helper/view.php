<?php 
	class View{
		public $user;
		function __construct(){
			if (Session::get("email",true))
			{
				$this->user = Controller::current_user();
					
			}
		}

		public function render($name)
		{
			require 'views/layouts/modal_login.php';
			require 'views/'.$name.'.php';
			require 'views/layouts/footer.php';
			require 'views/layouts/nav_responsive.php';
		}



	}




 ?>