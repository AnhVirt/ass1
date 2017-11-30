<?php 
	class Routes {
		function __construct(){
			$url = explode("/",$_SERVER['REQUEST_URI']);
			if (!(isset($url[1]) && $url[1] != ''))
				
				$url[1] = 'home';
			$file = $_SERVER['DOCUMENT_ROOT'].'/controllers/'.$url[1].".php";
			if (file_exists($file))
				require $file;
			else
			{
				require $_SERVER['DOCUMENT_ROOT'].'/controllers/errors.php';
				$controller = new Errors;
				$controller->error_404();
				exit;
			}
			$controller = new $url[1];
			
			
			if (isset($url[3])){
				$controller->{$url[2]}($url[3]);
			}
			elseif (isset($url[2])){
				$controller->{$url[2]}();
			}
			else
				$controller->{'index'}();	
		}


	}

 ?>