$(document).ready(function(){
    //장바구니 페이지 jquery

	
	let price = 0;
	let other2 = Number($("#other2").val());

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

	   }else if($('#shoppingBag').is(':checked') == false){
		   
		   shoppingBag= 0;  
	   }

	})
        
        
    $('#other1').click(function(){
    	if($('#other1').is(':checked') == true){
		   
		   other1 = 1000 ;

    	}else if($('#other1').is(':checked') == false){
		   
		   other1 = 0;

    	}

	   
    })
    
    $('input[type="checkbox"]').click(function(){
    
    	$("#cartPrice").val(price + other1 + other2 + shoppingBag);
    	
    	console.log(price);
    	console.log(other1);
    	console.log(other2);
    	console.log(shoppingBag);

    })
  
});