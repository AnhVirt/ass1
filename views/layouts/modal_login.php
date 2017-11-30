

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
						    <form class="form-horizontal" action="/users/login" method = "POST">
						      <div class="input-container">
						        <input type="email" id="email" name="email" required="required" />
						        <label for="user_name">Username</label>
						        <div class="bar"></div>
						      </div>
						      <div class="input-container">
						        <input type="password" id="password" name="password" required="required" />
						        <label for="password">Password</label>
						        <div class="bar"></div>
						      </div>
						      <div class="button-container">
						        <button type="submit"><span>Log In</span></button>
						      </div>
						      <div class="footer"><a href="#">Forgot your password?</a></div>
						    </form>
						  </div>
					    <div class="register" id="register-form">
						    <form class = "form-horizontal" action="/users/sign_up" method = "post">
						      <div class="input-container">
						        <input type="email" id="email" name ="email" required="required"/>
						        <label for="email">Email</label>
						        <div class="bar"></div>
						      </div>
						      <div class="input-container">
						        <input type="text" id="first_name" name ="first_name" required="required"/>
						        <label for="first_name">First Name</label>
						        <div class="bar"></div>
						      </div>
						      <div class="input-container">
						        <input type="text" id="last_name" name ="last_name" required="required"/>
						        <label for="last_name">Last Name</label>
						        <div class="bar"></div>
						      </div>
						      <div class="input-container">
						        <input type="password" id="password" name="password" required="required"/>
						        <label for="password">Password</label>
						        <div class="bar"></div>
						      </div>
						      <div class="input-container">
						        <input type="password" id="password" name="password-cofirmation" required="required"/>
						        <label for="password">Repeat Password</label>
						        <div class="bar"></div>
						      </div>
						      <div class="button-container">
						        <button type="submit"><span>Next</span></button>
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