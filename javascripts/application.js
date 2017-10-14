$(document).ready(function(){
	$(".navbar-toggle").click(function(){
		$("#myNavbar").toggleClass("toggle");
		$(".navbar-toggle").toggleClass("active");
		
		

	});
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();


		console.log(scroll);
		if (scroll > 90)
		
		{
			$('.navbar').removeClass("navbar-static-top").addClass("navbar-fixed-top").addClass("navbar-inverse");
		}	

		else
			{
				if( scroll >= 0 && scroll < 2)
				$('.navbar').removeClass("navbar-fixed-top").removeClass("navbar-inverse").addClass("navbar-static-top");
			}
	});
	


	$('.multi-item-carousel').carousel({
	  interval: 3000
	});


	$('.multi-item-carousel .item').each(function(){
	  var next = $(this).next();
	  if (!next.length) {
	    next = $(this).siblings(':first');
	  }
	  next.children(':first-child').clone().appendTo($(this));
	  
	  for (var i = 0; i < 2; i++) {
		next = next.next();
		if (!next.length) {
			next = $(this).siblings(':first');
		}

		next.children(':first-child').clone().appendTo($(this));
	}
	});
				
		
})