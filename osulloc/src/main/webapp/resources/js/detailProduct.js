let ReplyReviewService=(function(){
	//댓글쓰기를 하기 위한 함수 선언
	function add(reply,callback){
		$.ajax({
			url:"/osulloc/replies/new",
			type:"post",
			data:JSON.stringify(reply),
			contentType:"application/json;charset=utf-8",
			success:function(result){
				if(callback)
					callback(result);
			},
			error:function(){
			}
		})
	}
	
	//댓글 목록리스트를하기 위한 함수 선언
	function getList(param,callback){
		let pno=param.pno;
		let rno=param.rno;
		//console.log(pno);
		$.getJSON(
			"/osulloc/replies/list/"+pno+".json",
			function(data){
				if(callback)
					callback(data);
			})
	}
	
	//댓글 수정을 하기 위해 댓글 내용 가져오는 함수 선언
	function reDetail(rno, callback){
		var rno=rno;
		$.getJSON(
			"/osulloc/replies/"+rno+".json",
			function(data){
				if(callback)
					callback(data);
			})
	}
	
	//댓글 수정을 하기 위한 함수 선언
	function reupdate(reply,callback){
		$.ajax({
			url:"/osulloc/replies/update",
			type:"put",
			data:JSON.stringify(reply),
			contentType:"application/json;charset=utf-8",
			success:function(result){
				if(callback)
					callback(result);
			},
			error:function(){
			}
		})
	}
	
	//댓글 삭제를 하기 위한 함수 선언
	function remove(reply,callback){
		$.ajax({
			url:"/osulloc/replies/remove",
			type:"delete",
			data:JSON.stringify(reply),
			contentType:"application/json;charset=utf-8",
			success:function(result){
				if(callback)
					callback(result);
			},
			error:function(){
			}
		})
	}
		
	return {
		add:add,
		getList:getList,
		reDetail:reDetail,
		reupdate:reupdate,
		remove:remove
	};
	
})()



let num = document.querySelector("#num");
let total = document.querySelector("#total").value;

$(document).ready(function(){
	
	let price = 0;
	let actionForm = $("#actionForm");
	
	$("#plus").on("click", function(){
		num.value++;
		price=(total*num.value);
		total.value = price;
		$(".price").html(price)
	})
	
	$("#minus").on("click", function(){
		if(num.value==1){
			return;
		}
		num.value--;
		price=(total*num.value);
		total.value = price;
		$(".price").html(price)
	})
	
	//pno값
	let pno = $(".relistPno").val();
	
	$(".more").hide();
	
	$(".detail_right_more").click(function(){
		$(".relistPno").val($(this).data("pno"))
		pno = $(this).data("pno");
		$("#more"+pno).toggle();
	})
	
	$('.review').click(function(){
		let offset = $('#reviewD').offset(); 
        $('html').animate({scrollTop : offset.top}, 400);
	});
	
	$(".paginate_button a").on("click", function(e){
		
		e.preventDefault();
	﻿
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));	
		actionForm.submit();	
	})
		
	$(".rewrite").hide();
	
	
	// 댓글 버튼을 클릭하면
	$(".addReplyBtn").on("click",function(){
		
		$(".relistPno").val($(this).data("pno"))
		pno = $(this).data("pno");
		
		$(".rewrite").hide();
		$(".relist").hide();
		$("#rewrite"+pno).show();
		$("#relist"+pno).show();
		
		var str="";
	
		str+="<h4>댓글쓰기"+"</h4><input type='hidden' name='rno'><input type='hidden' name='pno' value='" + pno + "'>"
		str+="<div class='replyBox_replyer'><label>작성자"+"</label><br><input type='text' name='replyer' id='replyer"+pno+"'></div>"
		str+="<div class='replyBox_reply'><label>내용"+"</label><br>"
		str+="<textarea rows='' cols='' name='reply' id='reply"+pno+"'></textarea></div>"
		str+="<div class='replyFooter'>"
		str+="<button type='button' class='rebtn' id='replyRegisterBtn'>댓글쓰기"+"</button>"
		str+="<button type='button' class='rebtn' id='replyModBtn' data-pno=" + pno + ">댓글수정"+"</button>"
		str+="<button type='button' class='rebtn' id='replyRemoveBtn' data-pno=" + pno + ">댓글삭제"+"</button>"
		str+="<button type='button' class='rebtn' id='close' data-pno=" + pno + ">Close"+"</button></div>"
		
		$("#rewrite"+pno).html(str);
		
		$("input[name='replyer']").val("")
		
		//Reply input 내용 초기화
		$(".reply").val("")
		// 상세페이지가 실행되면 댓글 글쓰기 버튼 활성화
		$("#rewrite"+pno).find("#replyRegisterBtn").show();
		// 댓글 수정 버튼 비활성화
		$("#rewrite"+pno).find("#replyModBtn").hide();
		//댓글 삭제 버튼 비활성화
		$("#rewrite"+pno).find("#replyRemoveBtn").hide();
		
		//pnoValue(pno);
		showList(pno);
		
	});

	$(document).on("click","#close",function(){
			
		pno = $(this).data("pno");
		console.log(pno);

		$("#rewrite"+pno).hide();
		$("#relist"+pno).hide();
	
	})
	
	//댓글목록리스트
	function showList(pno){
		
		ReplyReviewService.getList({pno:pno},function(list){
		
			var str="";
			
			for(var i=0; i<list.length; i++){		
				
				str+= "<li class = 'relist_in' data-rno='"+list[i].rno+"'><div style='display : none'><b>" + list[i].rno + "</b></div><div class = 'listReplyer'><b>" + list[i].replyer + "</b></div>" 
				str+= "<div class = 'listReply'><div>" + list[i].reply + "</div><button type='button' id='menu' data-rno='"+list[i].rno+"' data-pno='"+list[i].pno+"' >수정</button></div>"
				str+= "</li>"	
			}
			
			$("#relist"+pno).html(str);
			
		});
	}
	
	//댓글쓰기를 눌렸을 때
	
	$(document).on("click","#replyRegisterBtn",function(){

		$("#rewrite"+pno).show();
		
		//사용자가 입력한 댓글내용을 저장
		let reply = $("textarea[id=reply"+pno+"]").val()
		
		console.log(reply);
		
		//사용자가 입력한 댓글작성자를 저장
		
		let replyer = $("input[id=replyer"+pno+"]").val();
		
		//ajax로 보내고자하는 json 타입 
		ReplyReviewService.add({replyer:replyer,reply:reply,pno:pno,rno: $("input[name='rno']").val()}, 
			
		// callback(익명함수) 함수호출
		function(result){
	
			alert("insert 작업 : " + result)
			
			//목록리스트를 처리
			showList(pno);
			
		});
			
			
		$("input[name='replyer']").val("");
		$("textarea[name='reply']").val("");
			
	})
	
	//select버튼을 클릭하면
	$(document).on("click","#menu", function(){
		
		//rno값 가져오기
		var rno = $(this).data("rno");
		console.log(rno)

		var reply = {/*pno: pno,*/ rno: rno ,reply:$("input[name='reply']").val()}
		
		ReplyReviewService.reDetail(rno,function(detail){

			$("#rewrite" + pno).find("input[name='rno']").val(detail.rno)
			$("#rewrite" + pno).find("input[name='replyer']").val(detail.replyer)
			$("#rewrite" + pno).find("textarea[name='reply']").val(detail.reply)
			
			//상세페이지가 실행되면 댓글 글쓰기 버튼 활성화
			$("#rewrite"+pno).find("#replyRegisterBtn").hide();
			//상세페이지가 실행되면 댓글 글수정 버튼 활성화
			$("#rewrite"+pno).find("#replyModBtn").show();
			//상세페이지가 실행되면 댓글 글삭제 버튼 활성화
			$("#rewrite"+pno).find("#replyRemoveBtn").show();			
		})
	})
		
	//댓글수정버튼을 클릭하면
	
	$(document).on("click","#replyModBtn",function(){

		pno = $(this).data("pno");
		pnoR = $("#rewrite" + pno).find("input[name='rno']").val();
		console.log("pnoR=" + pnoR);
		var reply = {pno: pno ,rno:pnoR  ,reply:$("textarea[id=reply"+pno+"]").val()}
		
		if (confirm("수정하시겠습니까?")) {
			//댓글수정함수를 호출
			ReplyReviewService.reupdate(reply,function(update){
				alert("update 작업 : " + update);
					
				showList(pno);
				$("input[name='replyer']").val("")
				$("textarea[name='reply']").val("")
				
				$("#rewrite"+pno).show();
				// 상세페이지가 실행되면 댓글 글쓰기 버튼 활성화
				$("#rewrite"+pno).find("#replyRegisterBtn").show();
				// 댓글 수정 버튼 비활성화
				$("#rewrite"+pno).find("#replyModBtn").hide();
				//댓글 삭제 버튼 비활성화
				$("#rewrite"+pno).find("#replyRemoveBtn").hide();
			})
		}
	})
		
	//댓글삭제버튼을 클릭하면
	
	$(document).on("click","#replyRemoveBtn",function(){

			
		pno = $(this).data("pno");
		pnoR = $("#rewrite" + pno).find("input[name='rno']").val();
		console.log("pnoR=" + pnoR);
			
			
		if (confirm("삭제하시겠습니까?")) {
			 
			 var reply = {rno: pnoR, pno : pno}
				
			//댓글 삭제함수를 호출해서 처리
	 		ReplyReviewService.remove(reply, function(remove){
				alert("delete 작업 : " + remove);
		
				//목록리스트 실행
				showList(pno); 
				$("input[name='replyer']").val("")
				$("textarea[name='reply']").val("")
				
		 	})
		 }
	})

	//=======================================================================
	
	//장바구니
	$("#cart").on("click", function(){
		
		$("#productForm").submit();
		
	})
	
});

