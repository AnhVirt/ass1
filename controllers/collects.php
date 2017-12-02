<?php 
	class Collects extends Controller{
		function __construct(){
			parent::__construct();
			if (!Session::get('email',true))
			{
				echo 'alert("You must sign in before buy")';
				exit;
			}
		}
		function buy(){
			if ($_SERVER["REQUEST_METHOD"] == 'POST')
			{
				if(isset($_GET['id']))
				{
					$book = new BookModel;
					$this->user = Controller::current_user();
					$this->cart = Controller::current_cart($this->user);
					$result = $book->buy($_GET['id'],$this->cart->id) ;
					$this->view->render('collects/buy',$result);
				}
				else
					echo 'alert("book is not found")';
				
			}
			else
			{

				
			}
		}
	}



 ?>