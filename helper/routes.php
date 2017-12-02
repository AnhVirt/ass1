<?php 
	class Routes {
		function __construct(){
			if (isset($_GET['url'])){
				$url = explode("/",$_GET['url']);
					$file = $_SERVER['DOCUMENT_ROOT'].'/controllers/'.$url[0].".php";
					if (file_exists($file))
						require $file;
					else
					{
						require $_SERVER['DOCUMENT_ROOT'].'/controllers/errors.php';
						$controller = new Errors;
						$controller->error_404();
						exit;
					}
					$controller = new $url[0];
					if(isset($_GET["q"])){

						if (isset($url[1])){
							$controller->{$url[1]}($_GET["q"]);
						}
						else
							$controller->{'index'}($_GET["q"]);	
					}
					else{
						if (isset($url[1])){
							$controller->{$url[1]}();
						}
						else
							$controller->{'index'}();
					}
				
			}
			else
			{
				require $_SERVER['DOCUMENT_ROOT'].'/controllers/home.php';
				$controller = new Home;
				$controller->index();

			}
		}


	}

 ?>