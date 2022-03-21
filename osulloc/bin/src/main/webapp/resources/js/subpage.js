$(document).ready(function(){

    $(".modal").hide();

    $(".magazine1 li").on("click", function(){

            //stop() : 애니메이션을 정지시키는 메소드
            //ppt_8 참고, $(selector).stop (clearQueue, jumpToEnd)

            //remove() : 요소 노드 그 자체까지 제거
            // $(this).children("img").hover().remove();
    	
    		let viewNum = $(this).find("input").val();
    		
            
            $("#myModal" + viewNum).show();
            $(".modal-body").scrollTop(0);

            // $(this).children("li .dlog").addClass("dialog");
            // $(this).children("li .dialog").css("display", "block");
    })


    $(".modal-footer").on("click",".modalBtn", function(){
    	
    	//alert("aaa");
       //$(".modal-title").hide();
       //$(".modalBtn").hide();
       $(".modal").hide();
       //$(".modal-dialog").hide();

    })


    // pager

    let i = 0;

    setInterval(function(){

        $(".pager p").last().removeClass("on");

        $(".pager p:nth-child(" + i + ")").removeClass("on");

        i++;

        $(".pager p:nth-child("+ i +")").addClass("on");
  

        if(i == 3){

            i = 0;
        }

        // console.log(i);

    }, 2000)
    
    
    
    
    //==============================================
    //pop-up
    
//    $(".magazine1 li .view2").on("click", function(){
//    	
//    	$(".pop-up").showPopup();
//    	
//    })


})




