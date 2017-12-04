<!DOCTYPE html>
	<?php 
	require 'views/layouts/css_js.php'; ?>
<html>
<head>
	<title></title>
	<script src="/lib/javascripts/information-user.js" type="text/javascript" charset="utf-8" async defer></script>
</head>
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
		<hr><hr>
		<div id="information" class="container">	
			<ul  class="nav nav-pills">
				<li class="active">
			        <a  href="#detail" data-toggle="tab"> My Information </a>
				</li>
				<li><a href="#mycart" data-toggle="tab">My Carts</a>
				</li>
			</ul>
			<div class="tab-content clearfix">
				<div class="tab-pane active" id="detail">
	          		<form method="POST" action="/users/changeif" id="form-info">
	          			<br>
	          			<h4>FirstName</h4>
	          			<br>
	          			<div class="input-group" >
	          				<span class="input-group-addon" id="basic-addon2"><i id="editfname" class="glyphicon glyphicon-wrench"></i></span>
						  	<input type="text" class="form-control" aria-describedby="sizing-addon1" name="firstname_us" id="firstname_us" value="<?= $this->user->first_name?>">
						</div>
						<hr>
	          			<h4>LastName</h4><br>
	          			<div class="input-group" >
	          				<span class="input-group-addon" id="basic-addon2"><i id="editlname" class="glyphicon glyphicon-wrench"></i></span>
						  	<input type="text" class="form-control" aria-describedby="sizing-addon1" name="lastname_us" id="lastname_us" value="<?= $this->user->last_name?>">
						</div>
						<hr>
	          			<h4>Email</h4><br>
	          			<div class="input-group" >
	          				<span class="input-group-addon" id="basic-addon2"><i id="editemail" class="glyphicon glyphicon-wrench"></i></span>
						  	<input type="email" class="form-control" placeholder="Email" aria-describedby="sizing-addon1" name="email_us" id="email_us"  value="<?= $this->user->email?>">
						</div>
						<hr>
						<h4>Birth Day</h4><br>
						<div class="input-group">
	          				<span class="input-group-addon" id="basic-addon2"><i id="editbir" class="glyphicon glyphicon-wrench"></i></span>
						  	<input type="date" class="form-control"  pattern="(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:30))|(?:(?:0[13578]|1[02])-31))" aria-describedby="sizing-addon1" name="birthday_us" id="bir_us" value="<?= $this->user->birth_day?>">
						</div>
						<hr>
						<h4>Phone</h4><br>
						<div class="input-group">
	          				<span class="input-group-addon" id="basic-addon2"><i id="editphone" class="glyphicon glyphicon-wrench"></i></span>
						  	<input type="text" class="form-control" placeholder="Birth Day" aria-describedby="sizing-addon1" name="phone_us" id="phone_us" value="<?= $this->user->phone?>">
						</div>
						<hr>
						<h4>Address</h4><br>
						<div class="input-group" >
	          				<span class="input-group-addon" id="basic-addon2"><i id="editadd" class="glyphicon glyphicon-wrench"></i></span>
						  	<input type="text" class="form-control" placeholder="Address" aria-describedby="sizing-addon1" name="address_us" id="add_us" value="<?= $this->user->address?>">
						</div>
						<hr>
	          			<h4>New Password</h4><br>
	          			<div class="input-group" >
	          				<span class="input-group-addon" id="basic-addon2"><i id="editpass" class="glyphicon glyphicon-wrench"></i></span>
						  	<input type="password" class="form-control" placeholder=" New Password" aria-describedby="sizing-addon1" name="password_us" id="password_us">
						</div>
						<hr>
						<h4>Avartar</h4><br>
						<div class="input-group">
							<input type="file" class="form-control" id="my_file" accept=".jpg, .jpeg, .png">
	          				<span class="input-group-addon" id="basic-addon2"><i id="editavt" class="fa fa-folder-open-o" aria-hidden="true"></i></span>
						  	<input type="text" class="form-control" placeholder="Avatar" aria-describedby="sizing-addon1" name="avt_url" id="avt_url" >
						</div>
						<div class="preview col-xs-12">
   							
  						</div>
						<hr>
						<button class="btn btn-primary" id="change_detail" name="change_detail" type="submit">Change Detail</button>
						<a href="/users/information" id="cancel" class="btn btn-primary">Cancel</a>
	          		</form>
				</div>
				<div class="tab-pane" id="mycart">
	          		<?php
	          			echo '<div class="table-responsive">';
	          		 	$result=$this->mycart;
          				if($this->mycart->num_rows>0){
	          				 $r =  $result->fetch_assoc();
							 $table="<table class='table'><tr>";
							 if($r["Action"]=="success"){
							 		$firstLine="<tr class='success'>";
							 	}
							 	if($r["Action"]=="pending"){
							 		$firstLine="<tr class='warning'>";
							 	}
							 	if($r["Action"]=="waiting"){
							 		$firstLine="<tr class='danger'>";
							 	}
							 foreach ($r as $k => $v){
							   $table .="<td>".$k. "</td>";
							   $firstLine .="<td>".$v."</td>";
							 }
							$table.="</tr>".$firstLine."</tr>";
							 while($r = $result->fetch_assoc()){
							 	if($r["Action"]=="success"){
							 		$table.="<tr class='success'>";
							 	}
							 	if($r["Action"]=="pending"){
							 		$table.="<tr class='warning'>";
							 	}
							 	if($r["Action"]=="waiting"){
							 		$table.="<tr class='danger'>";
							 	}
							   foreach($r as $k => $v)
							     $table.="<td>".$v."</td>";
							   	$table.="</tr>";
							 }
							$table .="</table>";
          				}
          				echo $table;
          				echo '</div>';
	          		?>
				</div>
			</div>
  		</div>


	</div>
	<?php 
		require 'views/layouts/footer.php';
	?>
</body>
</html>