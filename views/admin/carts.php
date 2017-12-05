<!DOCTYPE html>
<html>
	<?php 
	require 'views/layouts/css_js.php'; 

	?>
<body>
	<?php 
	require 'views/layouts/header.php';


	 ?>
	<div class="container">
		<table class="table">
			<caption><h2> Carts</h2></caption>
			<thead>
				<tr>
					<th>Frist Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
					<th>Price total</th>
					<th>Phone</th>
					<th>Address</th>
					<th>Created at</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
					<?php 
						while ($row = mysqli_fetch_object($this->carts)) {
							echo '<tr>';
							echo '<td>'.$row->first_name.'</td>';
							echo '<td>'.$row->last_name.'</td>';
							echo '<td>'.$row->email.'</td>';
							echo '<td>'.$row->action.'</td>';
							echo '<td>'.$row->price_total.'</td>';
							echo '<td>'.$row->phone.'</td>';
							echo '<td>'.$row->address.'</td>';
							echo '<td>'.$row->created_at.'</td>';
							echo '<td><a href="/admin/carts/delete?q='.$row->cart_id.'" data-method="post">Delete</a></td>';
							echo '<td><a href="/admin/carts/accept?q='.$row->cart_id.'" data-method="post">Accept</a></td>';
							echo '</tr>';
						}

					 ?>
			</tbody>
		</table>
	</div>
</body>
</html>