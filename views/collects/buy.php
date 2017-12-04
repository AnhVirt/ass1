<?php 
		// if ($message == false){
		// 	$error = "<div class='alert alert-danger' style = 'position: fixed; top:50%; left:0;'>loi he thong</div>";
		// 		echo '
		// 		$("body").prepend($("'.$error.'").remove(3000))

		// 		';
		// 	}
		// 	else{
			$success = "<div id='popup1' class='overlay-pop-up'><div class='popup'><h3 style='text-align:center;'>Success, book is added into your cart</h3><span class='close' onclick= $('#popup1').remove()>&times;</span></div>";
				echo '$("body").append($("'.$success.'"));';
				echo '$("#popup1").fadeOut(3000,function(){  $(this).remove();   });';
			// }



 ?>

