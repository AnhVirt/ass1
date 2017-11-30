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
			        			<?php 
											if (!isset($_SESSION["email"]))

												echo '<a class="btn btn-loggin" href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span> Login</a>';
											else
												echo '<a class="btn btn-loggin" href="#" >'.$this->user->first_name.'</a>';
											 ?>
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
					        				<a href="#" id="user-logout" >Log Out</a>
					        			</li>
					        		</ul>
				        		</div>
			        		</li>
			      	</ul>
			    	</div>
			    </div>
			  </div>
			</nav>

