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
			<caption><h2>Users</h2></caption>
			<thead>
				<tr>
					<th>Frist Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Address</th>
					<th>Phone</th>
					<th>Birth day</th>
					<th>Created at</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
					<?php 
						while ($row = mysqli_fetch_object($this->users)) {
							echo '<tr>';
							echo '<td>'.$row->first_name.'</td>';
							echo '<td>'.$row->last_name.'</td>';
							echo '<td>'.$row->email.'</td>';
							echo '<td>'.$row->address.'</td>';
							echo '<td>'.$row->phone.'</td>';
							echo '<td>'.$row->birth_day.'</td>';
							echo '<td>'.$row->created_at.'</td>';
							echo '<td><a href="/admin/users/delete?q='.$row->id.'" data-method="post">Delete</a></td>';
							echo '</tr>';
						}

					 ?>
			</tbody>
		</table>
	</div>
</body>
</html>