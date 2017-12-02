
<!DOCTYPE html>
<html>
	<?php 
	require 'views/layouts/css_js.php'; ?>
<body>

	<div class="wrapper">
		<!-- header start -->
			<?php 
				require 'views/layouts/header.php';

			 ?>
		<!-- header end -->
		<div class="container" id ="menu-desktop">
			<ul class="menu">
				<li class="dropdown-hover">
					<a href="/ass1/index/index.html">Home</a>
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
			        	  	<a href="/books/show">
			            		<img alt="images" src="/lib/images/img592.u3059.d20170616.t101749.921069.jpg" >
			            		<p>Dac Nhan Tam</p>
		            		</a>
		            	</div>
		            	<div class="book-img-menu">
			        	  	<a href="#">
			            		<img alt="images" src="/lib/images/img592.u3059.d20170616.t101749.921069.jpg" >
			            		<p>Dac Nhan Tam</p>
			            		
		            		</a>
		            	</div>
		            	<div class="book-img-menu">
			        	  	<a href="#">
			            		<img alt="images" src="/lib/images/img592.u3059.d20170616.t101749.921069.jpg" >
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
		<div class="slide-home">
			<section class="">
				<div class="owl-carousel owl-theme"  id="slideshow-home">
					<div class="book-advance book-1" style="background-image: url(/lib/images/home/slider2.jpg);">
						<div class="container">
							<div class="row">
								<div class="description">
									<span class="title">NEW SESSION</span>
									<span class="sub-title">BOOK 40% OFF</span>
									<span class="des"> Best book ready only for you. Take your time and choose your perfect book!</span>
									<a href class="btn btn-buy">BUY NOW</a>
								</div>
							</div>
						</div>
					</div>
					<div class="book-advance book-2" style="background-image: url(/lib/images/home/slider3.jpg);" >
						<div class="container">
							<div class="row">
								<div class="description" style="float:left; left:30px;">
									<span class="title">NEW SESSION</span>
									<span class="sub-title">BOOK 40% OFF</span>
									<span class="des"> Best book ready only for you. Take your time and choose your perfect book!</span>
									<a href class="btn btn-buy">BUY NOW</a>
								</div>
							</div>
						</div>
					</div>
					<div class="book-advance book-3" style="background-image: url(/lib/images/home/slider4.jpg);">
						<div class="container">
							<div class="row">
								<div class="description" style="float:left; left:30px;">
									<span class="title">NEW SESSION</span>
									<span class="sub-title">BOOK 40% OFF</span>
									<span class="des"> Best book ready only for you. Take your time and choose your perfect book!</span>
									<a href class="btn btn-buy">BUY NOW</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		<div class="container">
		
			<div class="row topweekend">
				<div class="col-md-12">
					<h1 class="title">Top Book weekend</h1>
		      <div class="owl-carousel owl-theme"  id="topweekend">
		      	<!-- <div class="carousel-inner"> -->
	      		<?php
	      			while ($row = mysqli_fetch_object($this->top_weekend)){
	      				echo '
									<div class="item">
			            	<div class="book-list">
				        	  	<a href="#">
				            		<img alt="images" src="'.$row->image_url.'" >
				            		<div class="icon-self">
				            			<span class="badge badge-deal">22
				            			</span>
				            		</div>
				            		<div class="content-book">
				            			<p class="price-sale">
				            				 '.$row->name.'₫ 
				            				<span class="price-regular">'.$row->price.' ₫</span>
				            			</p>
				            			<p></p>
				            		</div>
			            		</a>
				            		<div class="box-btn">
				            			<div class="btn-img">
				            				<a href="/collects/buy?id='.$row->id.'" type="button" class="btn btn-cart" data-remote = "true" data-method="POST"><i class="fa fa-cart-plus" aria-hidden="true"></i>
				            				</a>
				            			</div>
				            			<div class="btn-img">
				            				<button type="button" class="btn btn-heart"><i class="fa fa-heart" aria-hidden="true"></i>
				            				</button>
				            			</div>
				            		</div>
				            	</div>
				          </div>
	      			';
	      			}
	      		 ?>
		      </div>
				</div>
			</div>
			<div class="row topseller">
				<div class="col-md-12">
					<h1 class="title">Top best sellers</h1>
		      <div class="owl-carousel owl-theme" id="topseller">
	        	<?php
	      			while ($row = mysqli_fetch_object($this->top_seller)){
	      				echo '
									<div class="item">
			            	<div class="book-list">
				        	  	<a href="#">
				            		<img alt="images" src="'.$row->image_url.'" >
				            		<div class="icon-self">
				            			<span class="badge badge-deal">22
				            			</span>
				            		</div>
				            		<div class="content-book">
				            			<p class="price-sale">
				            				 '.$row->name.'₫ 
				            				<span class="price-regular">'.$row->price.' ₫</span>
				            			</p>
				            			<p></p>
				            		</div>
			            		</a>
				            		<div class="box-btn">
				            			<div class="btn-img">
				            				<a href="/collects/buy?id='.$row->id.'" type="button" class="btn btn-cart" data-remote = "true" data-method="POST"><i class="fa fa-cart-plus" aria-hidden="true"></i>
				            				</a>
				            			</div>
				            			<div class="btn-img">
				            				<button type="button" class="btn btn-heart"><i class="fa fa-heart" aria-hidden="true"></i>
				            				</button>
				            			</div>
				            		</div>
				            	</div>
				          </div>
	      			';
	      			}
	      		 ?>
		      </div>
				</div>
			</div>
		</div>
	</div>
	
	
</body>
</html>