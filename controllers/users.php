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
						$_cart = $cart->select($user->id);
						if($_cart != NULL &&  $_cart->action == 'waiting')
							true;
						else
							$cart->insert($user->id);

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
		}
		public function show(){
			$email = Session::get(["email"]);
		}
		public function information(){
			if (!Session::get('email',true))
				Session::destroy();
			$this->current_user=Controller::current_user();
			$this->view->render('information/user');
		}
		public function changeif(){
			if($_SERVER["REQUEST_METHOD"] == 'POST')
			{
				if (Session::get('email',true))
				{
					$email = $_POST["email_us"];
					$password = $_POST["password_us"];
					$first_name = $_POST["firstname_us"];
					$last_name = $_POST["lastname_us"];
					$birth_day = $_POST["birthday_us"];
					$address = $_POST["address_us"];
					$phone = $_POST["phone_us"];
					$avt_url = $_POST["avt_url"];
					$user = new UserModel;
					$current_id=Controller::current_user()->id;
					if(!empty($password)){
						$password = md5($password);
						Controller::changePassUser($current_id,$password);
					}
					$user = Controller::changeInfoUser($current_id,$first_name,$last_name,$phone,$email,$birth_day,$address,$avt_url);
					if (!$user)
					 echo("Error description: " . mysqli_error($user->db->get_db()));
					else
						header('Location: /users/information',true,301);

				}			
				else
					header('Location: /',true,301);
		}
		}
	}

 ?>