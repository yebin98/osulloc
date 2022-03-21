$(document).ready(function(){
	
	var actionForm = $("#actionForm");
	
	
//	//select버튼을 클릭하면
//	//$("select[name='search']").on("change", function(e){
//	$("#search").on("change", function(){
//		
//		searchVal = $("#search option:selected").val();
//		
//		var num = $(this).index();
//		console.log(num);
//		
//		//$("select[name='search']").val(searchVal);
//		//actionForm.find("input[name='search']").val(searchVal);
//		
//		
//
//		
//	})
	
	
	//검색버튼을 클릭하면
	$("input[type='submit']").on("click", function(e){
		
		e.preventDefault();
	
		//pageNum의 값을 1로 설정
		actionForm.find("input[name='pageNum']").val("1");
		
		
		console.log($("select[name='search']").index())
		var selectVal = $("select[name='search']").val();
		var select = $("select[name='search']");
		
		
		//$("#셀렉트ID option:eq(1)").attr("selected", "selected");
		if( selectVal == "T"){
			
			$("select[name='search'] option:eq(0)").attr("selected", "selected");
			
		}else if( selectVal == "C"){
			
			$("select[name='search'] option:eq(1)").attr("selected", "selected");

			
		}else if( selectVal == "W"){
			
			actionForm.find("select[name='search']").val("W");
			
		}else if( selectVal == "TC"){
			
			actionForm.find("select[name='search']").val("TC");
			
		}else{
			
			actionForm.find("select[name='search']").val("TCW");
		}
		
		actionForm.submit();

	})
	
	// 페이지 번호를 클릭하면
	$(".paginate_button a").on("click", function(e){
		
		e.preventDefault();
	
		﻿//form태그 안에 있는 pageNum 값에 $(this).attr("href")를 넣는다.﻿
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));

		
		//form안에 있는 값을 controller로 보내라(action)으로 보낸다.
		actionForm.submit();	
	})
	
	
		$(".showNum").on("change", function(e){

			e.preventDefault();
		
			//pageNum의 값을 1로 설정
			actionForm.find("input[name='pageNum']").val("1");
			
			
			console.log($("select[name='search']").index())
			var selectVal = $("select[name='search']").val();
			var select = $("select[name='search']");
			
			
			//$("#셀렉트ID option:eq(1)").attr("selected", "selected");
			if( selectVal == "T"){
				
				$("select[name='search'] option:eq(0)").attr("selected", "selected");
				
			}else if( selectVal == "C"){
				
				$("select[name='search'] option:eq(1)").attr("selected", "selected");

				
			}else if( selectVal == "W"){
				
				actionForm.find("select[name='search']").val("W");
				
			}else if( selectVal == "TC"){
				
				actionForm.find("select[name='search']").val("TC");
				
			}else{
				
				actionForm.find("select[name='search']").val("TCW");
			}
			
			actionForm.submit();

		})
		
		
		
		//===================================================================
		// 게시글 수 
		
		let boardNum = $(".contain td").length-1;
	
		console.log(boardNum);
	
		$(".totalCon").find("input").val(boardNum);
	
	


		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

	
})

