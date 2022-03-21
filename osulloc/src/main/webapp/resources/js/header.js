$(document).ready(function(){

    $(".menus").hide();
    $(".gnbBg").hide();
	$(".gnb-in")
		.mouseover(function(){
			$(".menus, .gnbBg").stop(true).slideDown(200);
		})
		
		.mouseout(function(){
			$(".menus, .gnbBg").stop(true).slideUp("slow");
		})
	
})