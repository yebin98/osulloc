$(document).ready(function(){

//    //gnb hover slide
//
    $(".menus").hide();
    $(".gnbBg").hide();
//    
//    $(".gnb-in li a").hover(
//
//        function(){
//
//        $(".menus").slideDown("slow");
//        $(".gnbBg").slideDown("slow");
//    },
//    	function(){
//
//        $(".menus").slideUp("slow");
//        $(".gnbBg").slideUp("slow");
//
//    })
//    
//    $(".menus li").hover(
//
//        function(){
//
//        $(".menus").slideDown("slow");
//        $(".gnbBg").slideDown("slow");
//    })
	$(".gnb-in")
		.mouseover(function(){
			$(".menus, .gnbBg").stop(true).slideDown(200);
		})
		
		.mouseout(function(){
			$(".menus, .gnbBg").stop(true).slideUp("slow");
		})
	
})
    
