<?php 
	class AdminUsers extends Controller{
		public $user;
		function __construct(){
			parent::__construct();
			if (Session::get('email',true)){
				$this->user = Controller::current_user();
				if ($this->user->admin != '1')
					header('Location: /');
			}
			else
					Session::destroy();
		}
		function index(){
			$users = new UserModel;
			$users = $users->select_all();
			$this->view->render('admin/users',$users);
		}
		function delete($user_id){
			if($_SERVER["REQUEST_METHOD"] == 'POST'){
				$user = new UserModel;
				$users = $user->delete_by_admin($user_id);
				header('Location: /admin/users/index');
			}
		}
	}


 ?>