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
				      		<li>
				      			<div class="btn btn-shopping-cart" href="#">
				      				<i class="fa fa-shopping-cart"></i> 
				      				Your cart  <span class="label label-default">

				      				<?php
				      					if (isset($_SESSION["email"]))
				      				 		echo $this->cart->total;
				      				 		else 
				      				 		echo 0; ?></span> 
					      		<div class="dropdown-cart">
											<ul class="dropdown-cart-hover">
												<li></li>
											</ul>
										</div>
				      		</div>
				      		</li>
			        		<li>
			        			<?php 
											if (!isset($_SESSION["email"]))

												echo '<div class="btn btn-loggin" href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span> Login</div>';
											else
												echo '<div class="btn btn-loggin" href="#" >'.$this->user->first_name.'
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

											</div>';
											 ?>
				        		
			        		</li>
			      	</ul>
			    	</div>
			    </div>
			  </div>
</nav>

