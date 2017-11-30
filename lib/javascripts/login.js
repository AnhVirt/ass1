$(document).ready(function(){
	$('#login').click(function(){
			if (!($("#login-form").hasClass("active")) && !($("#login").hasClass("active"))) 
				
				{
					$('#login-form').addClass("active");
					$("#login").addClass("active")
				}
			$('#register-form').removeClass("active");
			$('#register').removeClass("active");
		});
		$('#register').click(function(){
			if (!($("#register-form").hasClass("active")) && !($("#register").hasClass("active"))) 
				{

				$('#register-form').addClass("active");
				$('#register').addClass("active");
				}
			$('#login-form').removeClass("active");
			$('#login').removeClass("active");
		});
		$(".close-modal").click(function(){
			$("#myModal").modal("hide");
		})

		$('#user-logout').on('click',function(e){
			if (window.confirm("Are you sure?"))
			{
				top.location.href='/users/logout';
			}
		});
		
})