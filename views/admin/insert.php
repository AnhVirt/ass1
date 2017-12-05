<!DOCTYPE html>
	<?php 
	require 'views/layouts/css_js.php'; ?>
<html>
<head>
	<title></title>
	<!-- <script src="/lib/javascripts/information-user.js" type="text/javascript" charset="utf-8" async defer></script> -->
</head>
<body>
	<?php 
		require 'views/layouts/header.php';

	 ?>
	 <div class="container">
			<div class="tab-content clearfix">
				<div class="tab-pane active" id="detail">
					<h2>Insert Book</h2>
      		<form method="POST" action="/admin/books/create" id="form-info">
      			<br>
      			<h4>Name</h4>
      			<br>
      			<div class="input-group" >
      				<span class="input-group-addon" id="basic-addon2"><i id="editfname" class="glyphicon glyphicon-wrench"></i></span>
			  			<input type="text" class="form-control" aria-describedby="sizing-addon1" name="name" id="firstname_us" >
						</div>
						<hr>
      			<h4>Description</h4><br>
      			<div class="input-group" >
      				<span class="input-group-addon" id="basic-addon2"><i id="editlname" class="glyphicon glyphicon-wrench"></i></span>
				  		<textarea type="text" class="form-control" aria-describedby="sizing-addon1" rows = 20 name="description" id="lastname_us"></textarea>
						</div>
						<hr>
						<h4>Author</h4><br>
      			<div class="input-group" >
      				<span class="input-group-addon" id="basic-addon2"><i id="editlname" class="glyphicon glyphicon-wrench"></i></span>
				  		<input type="text" class="form-control" aria-describedby="sizing-addon1" name="author" id="lastname_us">
						</div>
						<hr>
      			<h4>Price</h4><br>
      			<div class="input-group" >
      				<span class="input-group-addon" id="basic-addon2"><i id="editemail" class="glyphicon glyphicon-wrench"></i></span>
					  	<input type="number" class="form-control"  aria-describedby="sizing-addon1" name="price" id="email_us">
						</div>
						<hr>
						<h4>Price Sale</h4><br>
						<div class="input-group">
      				<span class="input-group-addon" id="basic-addon2"><i id="editbir" class="glyphicon glyphicon-wrench"></i></span>
					  	<input type="number" class="form-control"  name="sale" id="bir_us">
						</div>
						<hr>
						<h4>Amount</h4><br>
						<div class="input-group">
      				<span class="input-group-addon" id="basic-addon2"><i id="editphone" class="glyphicon glyphicon-wrench"></i></span>
					  	<input type="number" class="form-control" placeholder="10" aria-describedby="sizing-addon1" name="amount" id="phone_us">
						</div>
						<hr>
						<h4>Image</h4><br>
						<div class="input-group">
      				<span class="input-group-addon" id="basic-addon2"><i id="editphone" class="glyphicon glyphicon-wrench"></i></span>
					  	<input type="text" class="form-control" placeholder="url image" aria-describedby="sizing-addon1" name="image_url" id="phone_us">
						</div>
			<div class="preview col-xs-12">
						
			</div>
			<hr>
			<button class="btn btn-primary" id="change_detail" name="change_detail" type="submit">Create book</button>
			<button class="btn btn-primary" id="change_detail" type="reset">Reset</button>
      		</form>
				</div>
			</div>

	 </div>
