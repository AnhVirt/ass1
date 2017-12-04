<?php 
	class Books extends Controller{

		function __construct(){
			parent::__construct();

		}
		function show($id_book){
			$book = new BookModel;

			$this->view->render('books/show',$book->find($id_book));
		}
		function search($keywork){
			$book = new BookModel;
			$this->view->render('books/search',$book->search($keywork));
		}



	}

 ?>