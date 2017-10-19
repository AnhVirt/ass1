$(document).ready(function(){

  function togglesidebar(){
    $("#nav-responsive").toggleClass("toggle");
    $(".wrapper").toggleClass("toggle");
    $(".navbar-toggle").toggleClass("active");
    $(".overlay").toggleClass("active");
    if (!($("#nav-responsive").hasClass("toggle")))
    {
      $(".nav-sub .responsive-tab-sub").each(function(){
        $(this).css("visibility","hidden");
      })
    $(".nav-main").removeClass("menu-sub-open")
    }
      
  }
	$(".navbar-toggle").click(togglesidebar);
  $(".close-sidebar").click(togglesidebar);
  
  $(".overlay").click(function(e){
    if(e.target.id != "nav-responsive")
     togglesidebar();

  })
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


	
	 $('#topweekend').owlCarousel({
    autoplay: true,
    autoplayTimeout: 3000,
    margin:20,
    mouseDrag: false,
    autoplayHoverPause: true,
    nav: true,
	  navText: [

	  ],
    responsive:{
        0:{
        	items:1
        }
        ,
        480:{
            items:2
        },
        600:{
            items:3
        },
        992:{
        		items:4
        },
        1200:{
            items:5
        }

    }
})
	 $('#topseller').owlCarousel({
	 	autoplay: true,
    autoplayTimeout: 3000,
    margin:20,
    mouseDrag: false,
    autoplayHoverPause: true,
    nav: true,
	  navText: [
	    
	  ],
    responsive:{
        0:{
        	items:1
        }
        ,
        480:{
            items:2
        },
        600:{
            items:3
        },
        992:{
        		items:4
        },
        1200:{
            items:5
        }

    }
   
	})
	 $("#slideshow-home").owlCarousel({
   	autoplay:false,
   	autoplayTimeout: 4000,	
   	items:1,
   	margin:0,
   	nav:true,
   	navText:[
   	]
   })
   $(".btn-cart").click(function(){
    $("body").append('<div class="alert alert-success alert-dismissible" style="position:fixed;top:5%;right:10px">You have add a book to your cart</div>');
    $(".alert").fadeOut(3000,function(){$(this).remove()});
   })
   $(".btn-heart").click(function(){
    $("body").append('<div class="alert alert-info alert-dismissible" style="position:fixed;top:15%;right:10px">You have add a book to your cart</div>');
    $(".alert").fadeOut(3000,function(){$(this).remove()});
   })
  
});