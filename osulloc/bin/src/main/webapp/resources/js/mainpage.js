$(document).ready(function(){

    //img는 배열에 저장되어 있어 0부터 시작
    //자식을 셀 때는 1부터 시작
    
    // 자동 pager

    let i = 0;

    setInterval(function(){

        console.log(i);

        $(".msPager li:nth-child(5)").removeClass("on");

        //nth-child사용 시  + 는 연결용
        $(".msPager li:nth-child("+i+")").removeClass("on");   //1 2 3 4 5
        imgslide(i);

        $(".msPager li:nth-child("+(i+1)+")").addClass("on");//0 1 2 3 4

        i++;
        

        if(i == 5){

            i = 0;

        }

        // $('.on a').css("background", "#cbe0c2");

    }, 2000)

    //본문 페이지 제품 칸 슬라이드

    $(".main3_r a").on("click", function(e){

    	e.preventDefault();
        $(".m3_item li").first().appendTo(".m3_item ul");

    })

    $(".main3_l a").on("click", function(e){

    	e.preventDefault();
        $(".m3_item li").last().prependTo(".m3_item ul");

    })

    $(".main4_r a").on("click", function(e){

    	e.preventDefault();
        $(".m4_item li").first().appendTo(".m4_item ul");

    })

    $(".main4_l a").on("click", function(e){

    	e.preventDefault();
        $(".m4_item li").last().prependTo(".m4_item ul");

    })

    //gnb hover slide
//
//    $(".menus").slideUp();
//
//    $(".gnb li").hover(
//s
//        function(){
//
//        $(".menus").slideDown("slow");
//    },
//
//    function(){
//
//        $(".menus").slideUp("slow");
//
//    })
    
    //===============================================
	//상품 박스 화살표
	
//	$(".main3_a").hide();
//	
//	$("#proSubmit").on("click", function(){
//		
//			
//			$(".main3_a").show();
//			
//	
//	})
	    
    
    
//    $("input[type='submit']").on("click", function(e){
//    	
//    	
//    	e.preventDefault();
//    
//    
//    })
    
    
    
    
    
    
    

})//jQuery 끝



//바뀌는 동시에 이미지도 바뀌어야 한다.

//imgslide.js


let  msImg = document.querySelector(".msImg");
let magazine = document.querySelector(".magazine");

function imgslide(c){

    // console.log(c)
    let imgs = ["다운로드 (3).jpg", "차.jpg" ,"tea_time4.jpg","tea_time5.jpg", "tea_time1.jpg"];

    magazine.setAttribute("src", "../resources/img/" + imgs[c]);

}








