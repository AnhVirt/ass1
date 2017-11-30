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
					$result = $user->select($email,$password);
					if ($result == 1)
					{
						Session::set('email',$_POST["email"]);
						header('Location: /',true,301);
					}
					else header('Location: /',true,301);
				}
				else
				{
					// header('Location: /',true,301);	
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
						$user = new UserModel;
						$password = md5($password);
						$result = $user->insert($email,$password,$first_name,$last_name);
						if (!$result)
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
		}
		public function show(){
			$email = Session::get(["email"]);
		}
	}

 ?>