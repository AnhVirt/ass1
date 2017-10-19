$(".responsive-tab .overflow-nav .menu-link").click(function(){
	console.log($(this).index())
})
$(".menu-link-main").click(function(){
	$(".nav-main").addClass("menu-sub-open");
	var index = $(this).index();
	$(".nav-sub div.responsive-tab-sub:nth-child(" + (parseInt(index))+  ")").css("visibility","visible");
})	
$("header#aboutus").click(function(){
	$(".nav-main").removeClass("menu-sub-open");
	$(".nav-sub div.responsive-tab-sub:nth-child(3)").css("visibility","hidden");
})
$("header#home").click(function(){
	$(".nav-main").removeClass("menu-sub-open");
	$(".nav-sub div.responsive-tab-sub:nth-child(1)").css("visibility","hidden");
})
$("header#categories").click(function(){
	$(".nav-main").removeClass("menu-sub-open");
	$(".nav-sub div.responsive-tab-sub:nth-child(2)").css("visibility","hidden");
})