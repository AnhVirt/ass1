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
		<table class="table table-bordered">
			<caption><h2>Books</h2></caption>
			<thead>
				<tr>
					<th>Name</th>
					<th>Author</th>
					<th>Description</th>
					<th>Price</th>
					<th>Sale</th>
					<th>Amount</th>
					<th>Num Buy</th>
					<th>Star</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<?php 
					while($row = mysqli_fetch_object($this->books)){
					echo '<tr>';
					echo '<td>'.$row->id.'</td>';
					echo '<td>'.$row->name.'</td>';
					echo '<td>'.$row->author.'</td>';
					echo '<td>'.$row->description.'</td>';
					echo '<td>'.$row->price.'</td>';
					echo '<td>'.$row->sale.'</td>';
					echo '<td>'.$row->amount.'</td>';
					echo '<td>'.$row->num_buy.'</td>';
					echo '<td>'.$row->star.'</td>';
					echo '<td><a href ="/admin/books/edit?q='.$row->id.'">Edit</a></td>';
					echo '<td><a href ="/admin/books/delete?q='.$row->id.'">Delete</a></td>';
					echo '</tr>';
						
					}

				 ?>
			</tbody>
		</table>
	</div>

</body>
</html>
