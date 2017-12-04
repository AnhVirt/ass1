<?php 

	class Carts extends Controller {
		
		function __construct(){
			parent::__construct();
			if (!Session::get('email',true))
				Session::destroy();

		}
		function checkout(){
			$user = Controller::current_user();
			$carts = Controller::current_cart($user);
			$this->pay_cart = Controller::cart($user->id,$carts->id);
			$this->view->render('carts/checkout');
		}
		function cancel_book($book_id){
			$user = Controller::current_user();
			$carts = Controller::current_cart($user);
			$book = new BookCartModel();
			$cart = $book->delete($book_id,$carts->id);
			$amount = (new CartModel)->select($user->id)->total;
			if (intval($cart->price_total) != 0)
			{
				echo '$("#amount-cart").text("'.$amount.'");';
				echo '$("#total-cart").text("'.$cart->price_total.'");';
				echo '$("#avt-cart").text("'.intval($cart->price_total)*0.1.'");';
				echo '$("#pay-cart").text("'.intval($cart->price_total)*1.1.'");';
				echo '$("#book-id-'.$book_id.'").fadeOut(500);';
			
				
			}
			else
			{
				echo '$("#amount-cart").text("'.$amount.'");';
				echo '$("#cart-container").html("<h2>YOU HAVE NOTHING IN YOUR CART</h2>");';
				echo '$("#cart-payment").remove();';
			}
		}

		function payment(){
			$user = Controller::current_user();
			$cart= new CartModel($user->id);
			$result = $cart->update($cart->select($user->id)->id,$user->id,"pending");
			$cart->insert($user->id);
			$this->view->render('carts/payment',$result);

		}


	}

 ?>