<!DOCTYPE html>
<html>
	<?php 
	require 'views/layouts/css_js.php' ?>
<body>

	<!-- Modal -->
	<?php 
		require 'views/layouts/modal_login.php';

	 ?>
	<!-- Modal end-->
	<div class="wrapper">
			<?php 
		require 'views/layouts/header.php';
	 ?>
		<div class="container" id ="menu-desktop">
			<ul class="menu">
				<li class="dropdown-hover">
					<a href="/">Home</a>
					<ul>
				    <li><a href="#">HTML</a></li>
				    <li><a href="#">CSS</a></li>
				    <li><a href="#">JavaScript</a></li>
				  </ul>
				</li>
				<li class="dropdown-hover mega-dropdown-menu">
					<a href="/categories">Categories</a>
					<ul>
						<div class="mega-menu container">
							<div class="row">
								<div class="col-sm-2 col-xs-4">
									<div class="menu-list">
										<h5>Categories</h5>
										<a href="#">Technology</a>
										<a href="#">Fiction</a>
										<a href="#"> Health & Fitness</a>
										<a href="#"> History</a>
										<a href="#"> Mystery</a>
										<a href="#">Politics & Current Affairs</a>
									</div>
								</div>
								<div class="col-sm-2 col-xs-4">
									<div class="menu-list">
										<h5>Categories</h5>
										<a href="#">Technology</a>
										<a href="#">Fiction</a>
										<a href="#"> Health & Fitness</a>
										<a href="#"> History</a>
										<a href="#"> Mystery</a>
										<a href="#">Politics & Current Affairs</a>
									</div>
								</div>
								<div class="col-sm-2 col-xs-4">
									<div class="menu-list">
										<h5>Categories</h5>
										<a href="#">Technology</a>
										<a href="#">Fiction</a>
										<a href="#"> Health & Fitness</a>
										<a href="#"> History</a>
										<a href="#"> Mystery</a>
										<a href="#">Politics & Current Affairs</a>
									</div>
								</div>
								<div class="col-sm-6">
									<h3 style="text-align: center;">You should read</h3>
									<div class="book-img-menu">
			        	  	<a href="#">
			            		<img alt="images" src="images/img592.u3059.d20170616.t101749.921069.jpg" >
			            		<p>Dac Nhan Tam</p>
		            		</a>
		            	</div>
		            	<div class="book-img-menu">
			        	  	<a href="#">
			            		<img alt="images" src="images/img592.u3059.d20170616.t101749.921069.jpg" >
			            		<p>Dac Nhan Tam</p>
			            		
		            		</a>
		            	</div>
		            	<div class="book-img-menu">
			        	  	<a href="#">
			            		<img alt="images" src="images/img592.u3059.d20170616.t101749.921069.jpg" >
			            		<p>Dac Nhan Tam</p>
			            		
		            		</a>
		            	</div>
								</div>
							</div>
						</div>
					</ul>
				</li>
				<li class="dropdown-hover">
					<a href="#">Contact</a>
					<ul>
						<li>
							<a href="#">Facebook <i class="fa fa-facebook-square" style="font-size: 30px"></i></a>
						</li>
						<li>
							<a href="#"> Twitter <i class="fa fa-twitter-square" style="font-size: 30px"></i></a>
						</li>
					</ul>
				</li>
				<li class="dropdown-hover">
						<a href="#">Introduction</a>
					<ul>
						<li>
							<a href="#">Facebook <i class="fa fa-facebook-square" style="font-size: 30px"></i></a>
						</li>
						<li>
							<a href="#"> Twitter <i class="fa fa-twitter-square" style="font-size: 30px"></i></a>
						</li>
					</ul>
				</li>
				<li class="Tabs-presentation-slider">
				</li>
				
			</ul>
		</div>
		<div class="container">
			<div class="row">
				<h1 class="title" id="header-cart"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</h1>
			</div>
			<div class="row">
				<div class="col-md-8">
					<div class="row" id ='cart-container'>
							<?php 
							$total = 0;
									if (isset($this->pay_cart)){
										if(mysqli_num_rows($this->pay_cart))
										{
											while($row = mysqli_fetch_object($this->pay_cart)){
												$total = $total + intval($row->total)* intval($row->sale);
												echo '
												<div class="item-cart col-xs-12" id="book-id-'.$row->id.'">
					        				<div class="media">
						        				<div class="media-left">
										   				<a href="#">
										     				<img class="media-object" id="image-cart" src="'.$row->image_url.'" alt="images">
										   				</a>
								   					</div>
										  			<div class="media-body">
													    <p class="media-heading">Book:    '.$row->name.' </p>
													    <p class="media-heading">Author: '.$row->author.' </p>
													    <p class="media-heading">Price: '.$row->sale.'₫	</p>
													    <p class="media-heading"> Amount: '.$row->total.'</p>
													    <a href="/carts/cancel_book?q='.$row->id.'" data-remote="true" data-method="POST" style="position: absolute; top: -20px; right:0;font-size:50px">&times</a>
														</div>
													</div>
					  						</div>
												';
											}

									}
									else
										echo '<h2>YOU HAVE NOTHING IN YOUR CART</h2>';
							

								}
								else
									echo '<h2>YOU HAVE NOTHING IN YOUR CART</h2>';
										

							 ?>
        			
					</div>
				</div>
				<div class="col-md-4" id="cart-payment">
					<?php 
						if (isset($this->pay_cart)){
							if(mysqli_num_rows($this->pay_cart)){
								echo '<div class="cart-div">';
								echo '<div class="cart-total">';
								echo '<div class="header-cart">';
								echo '<p class="pay-p-cart" >TOTAL:<span style = "float: right" id ="total-cart">'.$total.'₫</span></p>';
								echo '<p class="pay-p-cart"  >COUNT AVT:<span style = "float: right" id ="avt-cart">'.($total*0.1).'₫</span></p>';
								echo '<p >PAY:<span style = "float: right" id="pay-cart">'.($total*1.1).'₫</span></p>';
								echo '</div>';
								echo '</div>';
								echo '<a href="/carts/payment" data-remote="true" data-method="POST" class="btn btn-block" style="float:right">PAYMENT</a>';
								echo '</div>';
							}
						}
					 ?>
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>