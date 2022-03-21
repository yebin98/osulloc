$(document).ready(function(){
	
	var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$")  // 자바스크립트 정규식 
	
	var maxSize=5242880;  // 5MB
	
	function checkExtension(fileName, fileSize){
		if(fileSize >= maxSize){
			alert("파일 사이즈 초과");   
			
			return false;  
		}
		
		if(regex.test(fileName)){
			alert("해당 종류의 파일은 업로드 할 수 없습니다.");
			return false;
		}
		return true;
	}
	
	
	var uploadResult = $(".uploadResult ul");
	
	function showUploadedFile(uploadResultArr){
				 
		var str = "";
		var str2="";
		
		
		$(uploadResultArr).each(function(i,obj){
			console.log(obj);
			let fileCallPath = encodeURIComponent(obj.uploadpath+"/s_"+obj.uuid+"_"+obj.filename);
			//img 태그를 사용하여 웹브라우저에 출력
	        str2+="<input type='text' name='filename' value='"+obj.filename+"'>"
	        str2+="<input type='text' name='uuid' value='"+obj.uuid+"'>"
	        str2+="<input type='text' name='uploadpath' value='"+obj.uploadpath+"'>"

		});
		
        uploadResult.html(str);  
        console.log(str2);
        formObj.append(str2).submit();
	}
	     
    var cloneObj = $(".uploadDiv").clone();  
	    	
    const formObj = $("#productForm");	

	$("#uploadBtn").on("click",function(e){
		e.preventDefault();
		var formData = new FormData();
		var inputFile=$("input[name='uploadFile']");
		var files=inputFile[0].files;
		console.log(inputFile);
		
		for(var i = 0 ; i<files.length; i++){
			
			console.log(files[i].name);
			console.log(files[i].size);
			
			//파일 업로드 파일 및 확장자 예외처리
			if(!checkExtension(files[i].name,files[i].size)){
				
				return false;
			}
			formData.append("uploadFile",files[i]);
			
		}
		
		$.ajax({
			url:"/osulloc/page/productAjaxAction",
			type:"POST",
			processData:false,
			contentType:false,
			data:formData,  
			dataType:"json",
			success:function(result){
				console.log(result)
				alert("업로드 되었습니다.")
				showUploadedFile(result);
				
				$(".uploadDiv").html(cloneObj.html()); 
			} 
		})
	});
	
});
	
	