<nav class="navbar navbar-static-top">
	<div class="container">
	  <div class="navbar-header">
	    <button type="button" class="navbar-toggle">
	      <div class="icon-bar"></div>
	      <div class="icon-bar"></div>
	      <div class="icon-bar"></div>                        
	    </button>
	    <a class="navbar-brand" href="/"><i class="fa fa-book" aria-hidden="true"></i> BKBOOK</a>
	  </div>
		<div class="navbar-search">
			<form  action="/books/search" method="get">
				<div class="input-group input-group1">
					<div class="form-group form-group1">
						<div class="icon-addon addon-md addon-md1">
							<input type="text" name="q" class="form-control form-control1" placeholder="Search book">
							<label class="glyphicon glyphicon-search" for="search" rel="tooltip" title="search"></label>
						</div>
					</div>
				</div>
				<input type="submit" class="hidden">
			</form>
		</div>
	  <div class="navbar-right" id="myNavbar">
	  	<div class="sidebar">
	    	<ul class="nav navbar-nav navbar-right">
    			<li>
    				<a href="/carts/checkout" style="padding: 0px;outline: none;background: none;">
      			<span class="btn btn-shopping-cart" style="font-weight: bold" >
      				
      				<i class="fa fa-shopping-cart"></i> 
	      				Your cart  <span class="label label-default" id ="amount-cart">

	      				<?php
	      					if (isset($_SESSION["email"]))
	      				 		echo $this->cart->total;
	      				 		else 
	      				 		echo 0; ?>
	      				 			
	      				 		</span> 
		      		<div class="dropdown-cart">
								<ul class="dropdown-cart-hover">
									<li></li>
								</ul>
							</div>
				 		</span>
    				 	</a>
    			</li>
	      			<?php 
	      		 echo '<li>';
								if (!isset($_SESSION["email"]))

									echo '<span class="btn btn-loggin" style="font-weight: bold" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span> Login</span>';
								else{
									

									echo '<span class="btn btn-loggin" style="font-weight: bold">'.$this->user->first_name.'

										<div class="dropdown-login">
	        			<ul class="dropdown-login-hover">
		        			<li>
		        				<a href="/users/information">Your Information</a>
		        			</li>
		        			<li>
		        				<a href="#" id="user-logout" >Log Out</a>
		        			</li>
		        		</ul>
	        		</div>

								</span>';
	      		echo '</li>';
	      		echo '<img src="'.$this->user->avatar_url.'" style="height: 42px;" class="img-circle" alt="avatar" title="'.$this->user->last_name.'"">';
								}
								 ?>
	    	</ul>
	  	</div>
	  </div>
	</div>
</nav>

