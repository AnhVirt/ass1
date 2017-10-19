$(document).ready(function(){
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		var max_scroll=$("body").height() -$("#seemore").height()-$("#list-seemore").height()-$("#footer-page").height()-$("#banner").height()-188;
		console.log(max_scroll);
		console.log($("body").height())
		if(scroll>90 && scroll<=max_scroll){
		$("#banner").css("position","fixed");
		$("#banner").css("z-index" ,"1000");
		}
		else{
				$("#banner").css("position","absolute");
		}
	});
})


