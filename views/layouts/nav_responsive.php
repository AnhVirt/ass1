<nav class="nav-responsive" id="nav-responsive">
		<div class="nav-main">
			<div class="user-tab">
				<span style='left: 100px;top: 10px;color: white;position: absolute;'> Name User </span>
				<div class="img-name">
					<img alt="images" src="/lib/images/khong-gia-dinh.jpg" class="img-circle">
				</div>
				<ul>
					<li>
						<?php 
						if (!isset($_SESSION["email"]))

							echo '<a href="#" data-toggle="modal" data-target="#myModal">Sign in</a>';
						else
							echo '<a href="#" >xxxxxxx</a>';
						 ?>
						
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
					<header id="home" class="color-header">
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
					<header id="categories" class="color-header">
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
					<header id="aboutus" class="color-header">
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

	<a href="#" class="overlay"></a>