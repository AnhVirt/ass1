$(document).ready(function(){
	$(".custom-select-trigger").click(function(){
		$(".customs-option").toggleClass("open");
	});
	$(".custom-option").click(function(){
		console.log($(this).text());
		$(".custom-select-trigger").text($(this).text());
	});

	$(".search-price").click(function(){
		$(".search-price-filed").addClass("active");
	})
	$(".search-option").click(function(){
		$(".search-option-filed").addClass("active");
		
	})
	$(".search-price-filed header span").click(function(){
		$(".search-price-filed").removeClass("active");
	})
	$(".search-option-filed header span").click(function(){
		$(".search-option-filed").removeClass("active");
	})
	$(".search-option-filed .responsive-option").click(function(){
		$(".search-option-filed .responsive-option").each(function(){
			$(this).removeClass("selected");
			})
		 if (!($(this).hasClass("selected")))
		 	$(this).addClass("selected");
	})
	$(".search-price-filed .responsive-option").click(function(){
		$(".search-price-filed .responsive-option").each(function(){
			$(this).removeClass("selected");
			})
		 if (!($(this).hasClass("selected")))
		 	$(this).addClass("selected");
	})
})