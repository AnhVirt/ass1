<?php 
	class Users extends Controller{
		function __construct(){
			parent::__construct();
			
		}

		public function login(){
			if($_SERVER["REQUEST_METHOD"] == 'POST')
			{
				if (!isset($_SESSION["email"]))
				{
				
					$password = md5($_POST["password"]);
					$email =  $_POST["email"];

					$user = new UserModel;
					$user = $user->select($email,$password);

					if ($user->count == 1)
					{
						Session::set('email',$_POST["email"]);
						$cart = new CartModel;
						$cart = $cart->insert($user->id);

						header('Location: /',true,301);
					}
					else
					{
						header('Location: /',true,301);
						echo 'asdasdad';
					} 
				}
				else
				{
					header('Location: /',true,301);	
				}
			}
			else
			{
				header('Location: /views/404/404.html',false,301);
			
			}
		}
		public function sign_up(){
			if($_SERVER["REQUEST_METHOD"] == 'POST')
			{
				if (Session::get("email",true) == '')
				{
					$email = $_POST["email"];
					$password = $_POST["password"];
					$first_name = $_POST["first_name"];
					$last_name = $_POST["last_name"];
					$password_confirmation = $_POST["password-cofirmation"];
					if ($password != $password_confirmation)
						echo 'password-cofirmation not match';
					else
					{
						$password = md5($password);
						$user = new UserModel;
						$user = $user->insert($email,$password,$first_name,$last_name);
						if (!$user)
						 echo("Error description: " . mysqli_error($user->db->get_db()));
						else
							header('Location: /',true,301);

					}

				}			
				else
					header('Location: /',true,301);
			}
		}
		public function logout(){
			Session::destroy();
			$cart =  new CartModel;
			$cart = $cart->delete_empty_cart(Controller::current_user()->id);
		}
		public function show(){
			$email = Session::get(["email"]);
		}
	}

 ?>