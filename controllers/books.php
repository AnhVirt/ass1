<?php 
	class Books extends Controller{

		function __construct(){
			parent::__construct();

		}
		function show($id_book){
			$this->view->render('books/show');
		}



	}

 ?>