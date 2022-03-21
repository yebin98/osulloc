$(document).ready(function(){

    $(".modal").hide();

    $(".magazine1 li").on("click", function(){
    	
		let viewNum = $(this).find("input").val();
		
        
        $("#myModal" + viewNum).show();
        $(".modal-body").scrollTop(0);

    })


    $(".modal-footer").on("click",".modalBtn", function(){
       $(".modal").hide();
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

    }, 2000)
})




