<?php 
	if ($message == true){
		$success = "<div id='popup1' class='overlay-pop-up'><div class='popup'><h3 style='text-align:center;'>Success</h3><span class='close' onclick= $('#popup1').remove()>&times;</span></div>";
		echo '$("body").append($("'.$success.'"));';
		echo '$("#popup1").fadeOut(3000,function(){  $(this).remove(); window.location.href="/";   });';
		
	}
	else{
		$success = "<div id='popup1' class='overlay-pop-up'><div class='popup'><h3 style='text-align:center;'>Failed</h3><span class='close' onclick= $('#popup1').remove()>&times;</span></div>";
		echo '$("body").append($("'.$success.'"));';
		echo '$("#popup1").fadeOut(3000,function(){  $(this).remove();  window.location.href="/";  });';
		

	}

 ?>	
