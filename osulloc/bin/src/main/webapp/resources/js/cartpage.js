//pager 수동
// let msP = document.querySelectorAll("#msPager li");
// for(let i=0; i<msP.length; i++){
//     msP[i].addEventListener('click', e);
    
//     function e(){
//         for (let j=0;j<msP.length;j++){
//             msP[j].removeAttribute('class', 'on')
//         }
//         msP[i].setAttribute('class', 'on')
//         imgslide(i);
//     }
// }


$(document).ready(function(){

    //img는 배열에 저장되어 있어 0부터 시작
    //자식을 셀 때는 1부터 시작
    
    // let i = 0;

    //pager 자동
    // setInterval(function(){

    //     console.log(i);

    //     $("#msPager li:nth-child(5)").removeClass("on");

    //     //nth-child사용 시  + 는 연결용
    //     $("#msPager li:nth-child("+i+")").removeClass("on");   //1 2 3 4 5
    //     imgslide(i);

    //     $("#msPager li:nth-child("+(i+1)+")").addClass("on");//0 1 2 3 4

    //     i++;
        

    //     if(i == 5){

    //         i = 0;

    //     }

        // $('.on a').css("background", "#cbe0c2");

    // }, 2000)

    //제품 이동 슬라이드

    // $(".main3_l a").on("click", function(){

        
    //     $(".m3_item li").first().appendTo(".m3_item ul");

    // })

    // $(".main3_r a").on("click", function(){

        
    //     $(".m3_item li").last().prependTo(".m3_item ul");

    // })

    // $(".main4_l a").on("click", function(){

        
    //     $(".m4_item li").first().appendTo(".m4_item ul");

    // })

    // $(".main4_r a").on("click", function(){

        
    //     $(".m4_item li").last().prependTo(".m4_item ul");

    // })




    //=============================================================

    //장바구니 페이지 jquery

	
		let price = 0;
		let other2 = Number($("#other2").val());

		
    	//받는 값은 val(), 고정값 value는 지정해 놓은 후  attr을 사용하여 가져오기
        if($("#total") == 0){
        	
            $("#cartPrice").val(0);
            
        }
        

        $(".commodity li").on("click", function(e){
        	e.preventDefault();
        	$("input[type=checkbox]").prop("checked",false);
        	cartprice = 0;
            
           
            if($(this).hasClass("on")){
                
                price -= parseInt($(this).find(".cmPrice").val())*$(this).find(".cart-num2").val();
                $("#total").val(price);
                $("#cartPrice").val(price + other2);
                $(this).removeClass("on");


            }else{
            	
                $(this).addClass("on");
                price += parseInt($(this).find(".cmPrice").val())*$(this).find(".cart-num2").val();
                $("#total").val(price);
                $("#cartPrice").val(price + other2);


            } 
            
		})
		
			let shoppingBag  = Number($('#shoppingBag').val());
        	let other1  = Number($('#other1').val());
		
	        $('#shoppingBag').click(function(){
	        	
	        	
			   
				   if($('#shoppingBag').is(':checked') == true){
					   
					   shoppingBag = 1000;
					   //$("#cartPrice").val(price + shoppingBag + other2);
	
					   
				   }else if($('#shoppingBag').is(':checked') == false){
					   
					   shoppingBag= 0;
					   //$("#cartPrice").val(price + shoppingBag + other2);
	
					   
				   }
	
	
			})
	        
	        
	        $('#other1').click(function(){
	        	
	        	
			   
			   if($('#other1').is(':checked') == true){
				   
				   other1 = 1000 ;
				   //$("#cartPrice").val(price + other1 + other2);
				   
				   
	
				   
			   }else if($('#other1').is(':checked') == false){
				   
				   other1 = 0;
				   //$("#cartPrice").val(price + other1 + other2);
	
				   
			   }
	
			   
	        })
	        
	        $('input[type="checkbox"]').click(function(){
	        
	        	$("#cartPrice").val(price + other1 + other2 + shoppingBag);
	        	
	        	console.log(price);
	        	console.log(other1);
	        	console.log(other2);
	        	console.log(shoppingBag);

	        })

        
        
		
		
//		let aa = 0;
//        
//		$('#other1').click(function(){
//
//        	let others = 0;
//        	
//		   if($('#other1').is(':checked') == true){
//
//			   others += Number($(this).val());
//			   
//			   aa = price + other2 + others;
//			   $("#cartPrice").val(aa);
//			   
//		   }else if($('#other1').is(':checked') == false){
//
//			   others -= Number($(this).val());
//			   
//			   aa -= other2;
//			   $("#cartPrice").val(aa);
//			   
//		   }  
//		   
//        })
        

		
		


    //=============================================================
    
    //더보기 누르면 
    //1 - 3 li의 줄을 맨뒤로 보낸다.
    

//    $(".more").on("click", function(){
//
//        // for(let i = 0; i < 3; i++){
//        //jquery에서는 for문을 사용할 때는 each문 사용한다.
//        //참고 : https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=ouo7581&logNo=221509330494
//        $(".commodity").children("li").each(function(index, item){
//
//
//            console.log(index)
//            
//            
//        })
//
//    })
    
    //===========================================================
    
    
//	 $(".commodity").on("click",".more", function(){
//    	
//    	console.log("aaaaa");
//    	
//    	
//    	$(".commodity ul").scrollTop(300);
//    	
//    })

    
    
      
});









