<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>CATEGORIES</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="/lib/node_modules/owl.carousel/dist/assets/owl.carousel.min.css" />
	<link rel="stylesheet" href="/lib/node_modules/owl.carousel/dist/assets/owl.theme.default.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500" rel="stylesheet">
  <script src="https://use.fontawesome.com/9c1074407f.js"></script>
	<script src="/lib/node_modules/owl.carousel/dist/owl.carousel.min.js"></script>
  <script src="/lib/javascripts/application.js" type="text/javascript" charset="utf-8" async defer></script>
    <script src="/lib/javascripts/login.js" type="text/javascript" charset="utf-8" async defer></script>
    <script src="/lib/javascripts/categories.js" type="text/javascript" charset="utf-8" async defer></script>
	
  <link rel="stylesheet" href="/lib/style/header.css">
  <link rel="stylesheet" href="/lib/style/login.css">
  <link rel="stylesheet" href="/lib/style/book.css">
 <link rel="stylesheet" href="/lib/style/responsive-nav.css">
 <link rel="stylesheet" href="/lib/style/menu.css">
 <link rel="stylesheet" href="/lib/style/categories.css">
 <link rel="stylesheet" href="/lib/style/footer.css">
</head>
<body>
    <div class="wrapper">
        <!-- header start -->
            <?php 
            require 'views/layouts/header.php'
             ?>
        <!-- header end -->
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
    </div>
    
	<div class="container categories">
		<div class="row" id="group-search">
			<div class="col-md-3 col-sm-4">
				<select name="" id="id" class="form-control select-form">
					<option value=""> CHEAP</option>
					<option value=""> 30$ < x < 60$</option>
					<option value="">   60$ <= x </option>
				</select>
			</div>
			<div class="col-md-3 col-sm-4">
				<select name="" id="id" class="form-control select-form">
					<option value=""> SORT</option>
					<option value=""> CHEAP</option>
					<option value="">  EXPENSIVE </option>
				</select>
			</div>
		</div>
		<div class="row" id="group-book">
			<div class="col-md-3 col-sm-4 col-xs-6">
				<div class="book-list">
    	  	<a href="#">
        		<img alt="images" src="/lib/images/img592.u3059.d20170616.t101749.921069.jpg" >
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
			<div class="col-md-3 col-sm-4 col-xs-6">
				<div class="book-list">
    	  	<a href="#">
        		<img alt="images" src="/lib/images/img592.u3059.d20170616.t101749.921069.jpg" >
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
			<div class="col-md-3 col-sm-4 col-xs-6 ">
				<div class="book-list">
    	  	<a href="#">
        		<img alt="images" src="/lib/images/img592.u3059.d20170616.t101749.921069.jpg" >
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
			<div class="col-md-3 col-sm-4 col-xs-6 ">
				<div class="book-list">
    	  	<a href="#">
        		<img alt="images" src="/lib/images/img592.u3059.d20170616.t101749.921069.jpg" >
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
			<div class="col-md-3 col-sm-4 col-xs-6 ">
				<div class="book-list">
    	  	<a href="#">
        		<img alt="images" src="/lib/images/img592.u3059.d20170616.t101749.921069.jpg" >
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
		</div>
	</div>
	<div class="responsive-search">
		<div class="search-price">
			<span class=""><i class="fa fa-filter"></i> Filter</span>
		</div>

		<div class="search-option">
			<span class=""><i class="fa  fa-align-justify"></i> Option</span>
		</div>
	</div>
	<div class="search-price-filed">
		<header id="header" class="">
		<span class="fa  fa-chevron-left"></span><h4> Filter </h4>
		</header>
		<ul class="responsive-options">
			<li class="responsive-option"> <span for="s1"> x <= 30$ </span></li>
			<li class="responsive-option"> <span for="s2"> 30$ < x < 60$ </span> </li>
			<li class="responsive-option"> <span for="s3"> 60$ <= x  </span></li>
			<div class="option" style="display: none;">
				<select name="ss" >
					<option value="" id="s1"></option>
					<option value="" id="s2"></option>
					<option value="" id="s3"></option>

				</select>
			</div>
		</ul>
	</div>
	<div class="search-option-filed">
		<header id="header" class="">
		<span class="fa  fa-chevron-left"></span><h4> Option </h4>
		</header>
		<ul class="responsive-options">
			<li class="responsive-option"> <span> ASC </span></li>
			<li class="responsive-option"> <span> DESC </span> </li>
		</ul>
	</div>
</body>
</html>

