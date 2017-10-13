$(document).ready(function(){
	$(".navbar-toggle").click(function(){
		$("#myNavbar").toggleClass("toggle");

	});
	$(window).scroll(function(){
		if ($(window).scrollTop() > $('.navbar-static-top').height()+60)
			{
	console.log($('.navbar-static-top').height());

				$('.isstuck').css("position","fixed");
				$('.isstuck').css("display","block");
			}
			else
			{

				$('.isstuck').css("position","relative");
				$('.isstuck').css("display","none");

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