<?php 

	class AdminBooks extends Controller {
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
			$books = new BookModel;
			$books = $books->select_all();
			$this->view->render('admin/books',$books);
		}
		function insert(){
			$this->view->render('admin/insert');
		}
		function edit($book_id){
			$book = new BookModel;
			$book = $book->find($book_id);
			$this->view->render('admin/edit',$book);
		}
		function delete($book_id){
			$book = new BookModel;
			$book = $book->delete($book_id);
			header('Location: /admin/books');
		}
		function update($book_id){
			echo $_SERVER["REQUEST_METHOD"];
			if (!empty($_POST["name"]) && !empty($_POST["description"]) && !empty($_POST["price"]) && !empty($_POST["sale"])  && !empty($_POST["author"])){
				$name = $_POST["name"];
				$author = $_POST["author"];
				$description = $_POST["description"];
				$price = $_POST["price"];
				$sale = $_POST["price_sale"];
				$image_url = $_POST["image_url"];
				if (!empty($_POST["amount"])){
					$amount = $_POST["amount"];

				}
				else
					$amount = 10;
				$book = new BookModel;
				$result = $book->update($book_id,$name,$description,$author,$price,$sale,$amount);
				if($result == true){
					header('Location: /admin/books');
				}
				else
					header('Location: /admin/books/edit?q='.$book_id);

			}
			else
			{
				header('Location: /admin/books/edit?q='.$book_id);
			}
		}
		function create(){
			if (!empty($_POST["name"]) && !empty($_POST["description"]) && !empty($_POST["price"]) && !empty($_POST["sale"]) && !empty($_POST["image_url"]) && !empty($_POST["author"])){
				$name = $_POST["name"];
				$author = $_POST["author"];
				$description = $_POST["description"];
				$price = $_POST["price"];
				$sale = $_POST["price_sale"];
				$image_url = $_POST["image_url"];
				if (!empty($_POST["amount"])){
					$amount = $_POST["amount"];

				}
				else
					$amount = 10;
				$book = new BookModel;
				$result = $book->insert($name,$description,$author,$price,$sale,$amount,$image_url);
				if($result == true){
					header('Location: /admin/books');
				}
				else
					header('Location: /admin/books/insert');

			}
			else
				header('Location: /admin/books/insert');
		}


	}

 ?>