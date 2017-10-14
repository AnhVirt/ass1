$(document).ready(function(){
	$(".navbar-toggle").click(function(){
		$("#myNavbar").toggleClass("toggle");
		$(".navbar-toggle").toggleClass("active");
		
		

	});
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();


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
	  interval: false
	});


	$('.multi-item-carousel .item').each(function(){
	   var itemToClone = $(this);

    for (var i=1;i<4;i++) {
      itemToClone = itemToClone.next();

      // wrap around if at end of item collection
      if (!itemToClone.length) {
        itemToClone = $(this).siblings(':first');
      }

      // grab item, clone, add marker class, add to collection
      itemToClone.children(':first-child').clone()
        .addClass("cloneditem-"+(i))
        .appendTo($(this));
    }
	});
	if ($(window).width() < 768)
		{
				$(".multi-item-carousel .item").each(function(){
					if(!($(this).hasClass("active")))
					{
						$(this).addClass("active");
					}
				})
		}
		else
		{
			$("#topweekend .item:not(:first-child)").each(function(){
				$(this).removeClass("active");
			})
			$("#topseller .item:not(:first-child)").each(function(){
				$(this).removeClass("active");
			})
		}
	$(window).resize(function(){
		if ($(window).width() < 768)
		{
				$(".multi-item-carousel .item").each(function(){
					if(!($(this).hasClass("active")))
					{
						$(this).addClass("active");
					}
				})
		}
		else
		{
			$("#topweekend .item:not(:first-child)").each(function(){
				$(this).removeClass("active");
			})
			$("#topseller .item:not(:first-child)").each(function(){
				$(this).removeClass("active");
			})
		}
	})
});