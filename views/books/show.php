<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Homepage</title>
	<meta charset="utf-8">
	<!-- Latest compiled and minified CSS -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="node_modules/owl.carousel/dist/assets/owl.carousel.min.css" />
	<link rel="stylesheet" href="node_modules/owl.carousel/dist/assets/owl.theme.default.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500" rel="stylesheet">
	<script src="https://use.fontawesome.com/9c1074407f.js"></script>
	<script src="node_modules/owl.carousel/dist/owl.carousel.min.js"></script>
	<script src="javascripts/application.js" type="text/javascript" charset="utf-8" async defer></script>
	<script src="javascripts/login.js" type="text/javascript" charset="utf-8" async defer></script>
	<link rel="stylesheet" href="style/header.css">
	<link rel="stylesheet" href="style/login.css">
	<link rel="stylesheet" href="style/book.css">
 	<script src="javascripts/responsive-nav.js" type="text/javascript" charset="utf-8" async defer></script>
 	<link rel="stylesheet" href="style/responsive-nav.css">
	<link rel="stylesheet" href="style/menu.css">
	<link rel="stylesheet" href="style/footer.css">
	<link rel="stylesheet" type="text/css" href="style/introduction.css">
</head>
<body>
	<!--Alert-->
	<!--End Alert-->
	<!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog">
	    <!-- Modal content-->
	    <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-body">
		        <div id="modalLogin" class="modalLogin">
					<div class="container">
					  <div class="card">
					  	<span class="glyphicon glyphicon-remove close-modal" ></span>
					  	<ul class="form">
					  		<li class="active" id="login"><a>Login</a></li>
				  			<li id="register"><a >Register</a></li>
				  			<li class="Tabs-presentation-slider" role="presentation"></li>
					  	</ul>
					  	<div class="login active" id="login-form">
						    <form>
						      <div class="input-container">
						        <input type="email" id="email" required="required" />
						        <label for="user_name">Username</label>
						        <div class="bar"></div>
						      </div>
						      <div class="input-container">
						        <input type="password" id="password" required="required" />
						        <label for="password">Password</label>
						        <div class="bar"></div>
						      </div>
						      <div class="button-container">
						        <button><span>Log In</span></button>
						      </div>
						      <div class="footer"><a href="#">Forgot your password?</a></div>
						    </form>
						  </div>
					    <div class="register" id="register-form">
						    <form>
						      <div class="input-container">
						        <input type="email" id="email" required="required"/>
						        <label for="user_name">Username</label>
						        <div class="bar"></div>
						      </div>
						      <div class="input-container">
						        <input type="password" id="password" required="required"/>
						        <label for="password">Password</label>
						        <div class="bar"></div>
						      </div>
						      <div class="input-container">
						        <input type="password" id="password" required="required"/>
						        <label for="password">Repeat Password</label>
						        <div class="bar"></div>
						      </div>
						      <div class="button-container">
						        <button><span>Next</span></button>
						      </div>
						    </form>
						   </div>
					  	</div>
					  
					</div>		
			    </div>
	  		  </div>
	  		</div>
 		 </div>
	</div>
	<!-- Modal end-->
	<div class="wrapper">
		<!-- header start -->
			<nav class="navbar navbar-static-top">
			  <div class="container">
			    <div class="navbar-header">
			      <button type="button" class="navbar-toggle">
			        <div class="icon-bar"></div>
			        <div class="icon-bar"></div>
			        <div class="icon-bar"></div>                        
			      </button>
			      <a class="navbar-brand" href="index.html"><i class="fa fa-book" aria-hidden="true"></i> BKBOOK</a>
			    </div>
					<div class="navbar-search">
						<div class="input-group input-group1">
							<div class="form-group form-group1"><div class="icon-addon addon-md addon-md1">
								<input type="text" name="username" id="email" class="form-control form-control1" placeholder="Search book"><label class="glyphicon glyphicon-search" for="search" rel="tooltip" title="search"></label></div></div></div>
					</div>
			    <div class="navbar-right" id="myNavbar">
			    	<div class="sidebar">
			      	<ul class="nav navbar-nav navbar-right">
				      		<li><a class="btn btn-shopping-cart" href="cart.html"><i class="fa fa-shopping-cart"></i> Your cart  <span class="label label-default">2</span> </a>
				      		<div class="dropdown-cart">
										<ul class="dropdown-cart-hover">
											<li></li>
										</ul>
									</div>
				      		</li>
			        		<li>
			        			<a class="btn btn-loggin" href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span> Login</a>
				        		<div class="dropdown-login">
				        			<ul class="dropdown-login-hover">
					        			<li>
					        				<a href="#">Your Information</a>
					        			</li>
					        			<li>
					        				<a href="#">Your Information</a>
					        			</li>
					        			<li>
					        				<a href="#">Change password</a>

					        			</li>
					        			<li>
					        				<a href="#">Log Out</a>
					        			</li>
					        		</ul>
				        		</div>
			        		</li>
			      	</ul>
			    	</div>
			    </div>
			  </div>
			</nav>
		<!-- header end -->
		<div class="container" id ="menu-desktop">
			<ul class="menu">
				<li class="dropdown-hover">
					<a href="index.html">Home</a>
					<ul>
				    <li><a href="#">HTML</a></li>
				    <li><a href="#">CSS</a></li>
				    <li><a href="#">JavaScript</a></li>
				  </ul>
				</li>
				<li class="dropdown-hover mega-dropdown-menu">
					<a href="categories.html">Categories</a>
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
	</div>
	<nav class="nav-responsive" id="nav-responsive">
		<div class="nav-main">
			<div class="user-tab">
				<span style='left: 100px;top: 10px;color: white;position: absolute;'> Name User </span>
				<div class="img-name">
					<img alt="images" src="images/khong-gia-dinh.jpg" class="img-circle">
				</div>
				<ul>
					<li>
						<a href="#" data-toggle="modal" data-target="#myModal">Sign in</a>
					</li>
					<li>
						<a href="#">Sign up</a>
					</li>
				</ul>
			</div>
			<div class="responsive-tab">
				<ul class="overflow-nav">
					<li class="menu-link"><a href="cart.html">Your cart <i class="fa fa-shopping-cart"></i>  <span class="badge">10</span></a></li>
					<li class="menu-link menu-link-main">
							<a href="categories.html">Home</a>						
					</li>
					<li class="menu-link menu-link-main">
							<a href="categories.html">Categories</a>						
					</li>
					<li class="menu-link menu-link-main">
							<a href="categories.html">About us</a>						
					</li>
					<li class="menu-link">
							<a href="#">Sign Out</a>						
					</li>
				</ul>
			</div>
		</div>
		<div class="nav-sub">
			<div class="responsive-tab-sub" style="visibility: hidden;">
				<ul class="overflow-nav-sub">
					<header id="home">
						<h4>Home</h4>
					</header>
					<li class="menu-link">
						<a href="#">HTML</a>
					</li>
					<li class="menu-link">
						<a href="#"> CSS</a>
					</li>
					<li class="menu-link">
						<a href="#"> JAVASCRIPT</a>
					</li>
				</ul>
			</div>
			<div class="responsive-tab-sub" style="visibility: hidden;">
				<ul class="overflow-nav-sub">
					<header id="categories">
						<h4>Categories</h4>
					</header>
					<li class="menu-link">
						<a>Technology</a>
					</li>
					<li class="menu-link">
						<a> Health & Fitness </a>
					</li>
					<li class="menu-link">
						<a> History</a>
					</li>
				</ul>
			</div>
			<div class="responsive-tab-sub" style="visibility: hidden;">
				<ul class="overflow-nav-sub">
					<header id="aboutus">
						<h4>About us</h4>
					</header>
					<li class="menu-link">
							<a href="#facebook">FACEBOOK <i class="fa fa-facebook-square"></i></a>					
					</li>
					<li class="menu-link">
						<a href="#Twitter">TWITTER  <i class="fa fa-twitter-square"></i></a>					
					</li>
					
				</ul>
			</div>
		</div>
	</nav>
	<div class="wrapper">
		<div class="container" id="container-detail">
			<div class="col-md-6 col-xs-12" id="image-book">
				<img src="images/detail/img-detail.png" alt="images" class="media-object" id="img-resize">
			</div>
			<div class="col-md-6 col-xs-12" id="detail-book">
				<div class="row" id="detail-1">
					<h3>Book "Kheo an noi se co duoc thien ha"</h3>
					<h3>Authors: Google</h3>
					<h3>Price: 200$</h3>
					<h3>Price sale: 175$</h3>
					<h3>Star
				<a href="#" class="glyphicon glyphicon-star-empty" id="star1"></a>
				<a href="#" class="glyphicon glyphicon-star-empty" id="star2"></a>
				<a href="#" class="glyphicon glyphicon-star-empty" id="star3"></a>
				<a href="#" class="glyphicon glyphicon-star-empty" id="star4"></a>
				<a href="#" class="glyphicon glyphicon-star-empty" id="star5"></a>
				</h3>
				</div>
				<a href="#" class="money">51.000 ₫</a>Đã có VAT
				<pre> 
Tiết kiệm: 20% (13.000 ₫)
Giá thị trường: 64.000 ₫
				</pre>
				<pre> 
Bạn muốn nhận hàng trước 10h sáng hôm nay 19/10?
Đặt hàng trong 7 giờ 40 phút tới và chọn giao hàng 2h ở bước thanh toán
				</pre>
				<a href="#"><h3>Xem chi tiết</h3></a><br>
				<a href="#" class="btn btn-danger" id="btn-dathang"><p class="color-i"><i class="fa fa-shopping-cart"></i> Đặt hàng ngay</p></a><br>
			</div>
		</div>
	</div>
	<div class="wrapper">
		<div class="container">
		
			<div class="row topweekend">
				<div class="col-md-12">
					<h1 class="title">Top View</h1>
		      <div class="owl-carousel owl-theme"  id="topweekend">
		      	<!-- <div class="carousel-inner"> -->
		          <div class="item">
	            	<div class="book-list">
		        	  	<a href="#">
		            		<img alt="images" src="images/img592.u3059.d20170616.t101749.921069.jpg" >
		            		<div class="icon-self">
		            			<span class="badge badge-deal">22
		            			</span>
		            		</div>
		            		<div class="content-book">
		            			<p class="price-sale">50000 ₫ 
		            				<span class="price-regular">60000 ₫</span>
		            			</p>
		            			<p></p>
		            		</div>
	            		</a>
		            		<div class="box-btn">
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-heart"><i class="fa fa-heart" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            		</div>
		            	</div>
		          </div>
		          <div class="item">
	            	<div class="book-list">
	            		<a href="#1"><img alt="images" src="images/img894.u3059.d20170616.t102330.519090.jpg" >
	            		<div class="content-book">
		            			<p class="price-sale">50000 ₫ 
		            				<span class="price-regular">60000 ₫</span>
		            			</p>
		            			<p></p>
		            		</div></a>
	            		<div class="icon-self">
	        					<span class="badge badge-deal">22</span>
	            		</div>
	            		<div class="box-btn">
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-heart"><i class="fa fa-heart" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            		</div>
	            	</div>
	            </div>
		          <div class="item">
	            	<div class="book-list">
	            		<a href="#1"><img alt="images" src="images/kheo-an-noi-se-co-duoc-thien-ha.jpg" >
	            		<div class="content-book">
		            			<p class="price-sale">50000 ₫ 
		            				<span class="price-regular">60000 ₫</span>
		            			</p>
		            			<p></p>
		            		</div></a>
	            		<div class="icon-self">
	        					<span class="badge badge-deal">22</span>
	            		</div>
	            		<div class="box-btn">
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-heart"><i class="fa fa-heart" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            		</div>
	            	</div>
	            </div>
		          <div class="item">
	            	<div class="book-list">
	            		<a href="#1"><img alt="images" src="images/khi-hoi-tho-hoa-thinh-khong.u5464.d20170726.t170655.288851.jpg" >
	            		<div class="content-book">
		            			<p class="price-sale">50000 ₫ 
		            				<span class="price-regular">60000 ₫</span>
		            			</p>
		            			<p></p>
		            		</div></a>
	            		<div class="icon-self">
	            			<span class="badge badge-deal">22</span>
	            		</div>
	            		<div class="box-btn">
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-heart"><i class="fa fa-heart" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            		</div>
	            	</div>
	            </div>
		          <div class="item">
	            	<div class="book-list">
	            		<a href="#1"><img alt="images" src="images/khong-gia-dinh.jpg" >
	            		<div class="content-book">
		            			<p class="price-sale">50000 ₫ 
		            				<span class="price-regular">60000 ₫</span>
		            			</p>
		            			<p></p>
		            		</div></a>
	            		<div class="icon-self">
	            			<span class="badge badge-deal">22</span>
	            		</div>
	            		<div class="box-btn">
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-heart"><i class="fa fa-heart" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            		</div>
	            	</div>
	            </div>
		          <div class="item">
	            	<div class="book-list">
	            		<a href="#1"><img alt="images" src="images/ba-chang-linh-ngu-lam.u5465.d20171004.t102622.786481.jpg" >
	            		<div class="content-book">
		            			<p class="price-sale">50000 ₫ 
		            				<span class="price-regular">60000 ₫</span>
		            			</p>
		            			<p></p>
		            		</div></a>
	            		<div class="icon-self">
	            			<span class="badge badge-deal">22</span>
	            		</div>
	            		<div class="box-btn">
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-heart"><i class="fa fa-heart" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            		</div>
	            	</div>
	            </div>
		          <div class="item">
	            	<div class="book-list">
	            		<a href="#1"><img alt="images" src="images/bia-1---mac-ke-thien-ha.u5102.d20170323.t155756.324847.jpg" >
	            		<div class="content-book">
		            			<p class="price-sale">50000 ₫ 
		            				<span class="price-regular">60000 ₫</span>
		            			</p>
		            			<p></p>
		            		</div></a>
	            		<div class="icon-self">
	            			<span class="badge badge-deal">22</span>
	            		</div>
	            		<div class="box-btn">
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-heart"><i class="fa fa-heart" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            		</div>
	            	</div>
	            </div>
		          <div class="item">
	            	<div class="book-list">
	            		<a href="#1"><img alt="images" src="images/co-gai-den-tu-hom-qua_bia-moi_ban-thuong.u5131.d20170607.t100057.355539.jpg" >
	            		<div class="content-book">
		            			<p class="price-sale">50000 ₫ 
		            				<span class="price-regular">60000 ₫</span>
		            			</p>
		            			<p></p>
		            		</div></a>
	            		<div class="icon-self">
	            			<span class="badge badge-deal">22</span>
	            		</div>
	            		<div class="box-btn">
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-heart"><i class="fa fa-heart" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            		</div>
	            	</div>
	            </div>
		          <div class="item">
	            	<div class="book-list">
	            		<a href="#1"><img alt="images" src="images/giet-con-chim-nhai_2_2.jpg" >
	            		<div class="content-book">
		            			<p class="price-sale">50000 ₫ 
		            				<span class="price-regular">60000 ₫</span>
		            			</p>
		            			<p></p>
		            		</div></a>
	            		<div class="icon-self">
	            			<span class="badge badge-deal">22</span>
	            		</div>
	            		<div class="box-btn">
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-heart"><i class="fa fa-heart" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            		</div>
	            	</div>
	            </div>
		          <div class="item">
	            	<div class="book-list">
	            		<a href="#1"><img alt="images" src="images/hanh_trinh_ve_phuong_dong_2.jpg" >
	            		<div class="content-book">
		            			<p class="price-sale">50000 ₫ 
		            				<span class="price-regular">60000 ₫</span>
		            			</p>
		            			<p></p>
		            		</div></a>
	            	<div class="icon-self">
	            			<span class="badge badge-deal">22</span>
	            		</div>
	            		<div class="box-btn">
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-heart"><i class="fa fa-heart" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            		</div>
	            	</div>
	            </div>
		          <div class="item">
	            	<div class="book-list">
	            		<a href="#1"><img alt="images" src="images/harvard-bon-ruoi-sang-01.u5426.d20170829.t110503.114626.jpg" >
	            		<div class="content-book">
		            			<p class="price-sale">50000 ₫ 
		            				<span class="price-regular">60000 ₫</span>
		            			</p>
		            			<p></p>
		            		</div></a>
	            		<div class="icon-self">
	            			<span class="badge badge-deal">22</span>
	            		</div>
	            		<div class="box-btn">
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-heart"><i class="fa fa-heart" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            		</div>
	            	</div>
	            </div>
		          <div class="item">
	            	<div class="book-list">
	            		<a href="#1"><img alt="images" src="images/img117.u3059.d20170616.t100547.729023.jpg" >
	            		<div class="content-book">
		            			<p class="price-sale">50000 ₫ 
		            				<span class="price-regular">60000 ₫</span>
		            			</p>
		            			<p></p>
		            		</div></a>
	            		<div class="icon-self">
	            			<span class="badge badge-deal">22</span>
	            		</div>
	            		<div class="box-btn">
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            			<div class="btn-img">
		            				<button type="button" class="btn btn-heart"><i class="fa fa-heart" aria-hidden="true"></i>
		            				</button>
		            			</div>
		            		</div>
	            	</div>
	            </div>
		        <!-- </div> -->
		          <!-- <a class="left carousel-control" href="#topweekend" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
		        	<a class="right carousel-control" href="#topweekend" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> -->
		      </div>
				</div>
			</div>
		</div>
	</div>
	<div class="wrapper" id="comment-wrapper">
	  <main class="hoc container clear"> 
	    <!-- main body -->
	    <div class="content"> 
	      <div id="comments">
	        <h2 class="comments-name">Comments</h2>
	        <ul>
	          <li>
	            <article>
	              <header>
	                <figure class="avatar"><a href="#" class="glyphicon glyphicon-user"></a></figure>
	                <address>
	                	<img src="http://graph.facebook.com/100004764192420/picture" alt=""><a href="#" class="">Nguyễn Tường Vi</a>
	                </address>
	                <time datetime="2017-10-06T08:15+00:00">Friday, 6<sup>th</sup> October 2017 @08:15:00</time>
	              </header>
	              <div class="comcont">
	                <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
	              </div>
	            </article>
	          </li>
	          <li>
	            <article>
	              <header>
	                <figure class="avatar"><a href="#" class="glyphicon glyphicon-user"></a></figure>
	                <address>
	                	 <img src="http://graph.facebook.com/100002953237059/picture" alt=""><a href="#">Nguyễn Anh Việt</a> 
	                </address>
	                <time datetime="2017-10-06T08:15+00:00">Friday, 6<sup>th</sup> October 2017 @08:15:00</time>
	              </header>
	              <div class="comcont">
	                <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
	              </div>
	            </article>
	          </li>
	          <li>
	            <article>
	              <header>
	                <figure class="avatar"><a href="#" class="glyphicon glyphicon-user"></a></figure>
	                <address>
	                	 <img src="http://graph.facebook.com/100015349683870/picture" alt=""><a href="#">Nguyễn Khương Duy</a>
	                </address>
	                <time datetime="2017-10-06T08:15+00:00">Friday, 6<sup>th</sup> October 2017 @08:15:00</time>
	              </header>
	              <div class="comcont">
	                <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
	              </div>
	            </article>
	          </li>
	        </ul>
	        <h2 class="write-comment">Write A Comment</h2>
	        <form action="#" method="post" id="form-comment">
	        	<div class="row">
		          <div class="col-md-4 col-xs-12">
		            <div class="group">      
				      <input type="text" required>
				      <span class="highlight"></span>
				      <span class="bar"></span>
				      <label>Name</label>
				    </div>
		          </div>
		          <div class="col-md-4 col-xs-12">
		            <div class="group">      
				      <input type="email" required>
				      <span class="highlight"></span>
				      <span class="bar"></span>
				      <label>Email</label>
				    </div>
		          </div>
		          <div class="col-md-4 col-xs-12">
		            <div class="group">      
				      <input type="url" required>
				      <span class="highlight"></span>
				      <span class="bar"></span>
				      <label>Website</label>
				    </div>
		          </div>
	          	</div>
	          	<div class="row" id="row-text">
		            <textarea placeholder="This is an awesome comment box" rows="10" name="comment[text]" id="comment_text" cols="40" class="ui-autocomplete-input" autocomplete="off" role="textbox" aria-autocomplete="list" aria-haspopup="true"></textarea>
	          	</div>
	          	<div>
		            <input type="submit" name="submit" value="Submit Form" class="btn btn-warning">
		            &nbsp;
		            <input type="reset" name="reset" value="Reset Form" class="btn btn-warning">
	          	</div>
	        </form>
	      </div>
	      <!-- ################################################################################################ -->
	    </div>
	    <!-- / main body -->
	    <div class="clear"></div>
	  </main>
	</div>
	<a href="#" class="overlay"></a>
	<div class="footer-page">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6 col-xs-6">
					<ul>
						<h3>About Us</h3>
						<li>
							<a href="#"> <i class="fa fa-facebook">acebook</i></a>
						</li>
						<li>
							<a href="#"> <i class="fa fa-twitter">Twitter</i></a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-6">
					<ul>
						<h3> What's hot</h3>
						<li><a href="#">Popular Textbooks</a></li>
						<li><a href="#">Top Rented Textbooks</a></li>
						<li><a href="#">Rent Textbooks</a></li>
						<li><a href="#">All Categories</a></li>
						<li><a href="#">Top Searches</a></li>
						<li><a href="#">Customer Quotes</a></li>
						<li><a href="#">Coupons</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-6">
					<ul>
						<h3> Support </h3>
						<li>
							<a href="#">How to buy book</a>
						</li>
						<li>
							<a href="#">Manager your cart</a>
						</li>
						<li>
							<a href="#">Policy</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-6">
					<a href="#"><i class="fa fa-book"> </i> BKBOOK</a>
					<a href="#">Nguyen Anh Viet</a>
					<a href="#">Nguyen Tuong Vi</a>
					<a href="#">Nguyen Khuong Duy</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>