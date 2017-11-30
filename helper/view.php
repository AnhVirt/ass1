<?php 
	class View{
		function __construct(){
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