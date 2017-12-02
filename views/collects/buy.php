<?php 
		if ($message == false){
			$error = "<div class='alert alert-danger' style = 'position: fixed; top:50%; left:0;'>loi he thong</div>";
				echo '
				$("body").prepend($("'.$error.'").fadeOut(3000))

				';
			}
			else{
				$success = "<div class='alert alert-success' style = 'position: fixed; top:50%; left:0;'>Added your cart</div>";
				echo '
				$("body").prepend($("'.$success.'").fadeOut(3000))

				';
			}



 ?>

