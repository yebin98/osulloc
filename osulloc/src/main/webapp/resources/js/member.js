
/* 유효성 검사 통과유무 변수 */
// var idCheck = false;            // 아이디
// var idckCheck = false;            // 아이디 중복 검사
// var pwCheck = false;            // 비번
// var pwckCheck = false;            // 비번 확인
// var pwckcorCheck = false;        // 비번 확인 일치 확인
// var nameCheck = false;            // 이름
// var mailCheck = false;            // 이메일
// var mailnumCheck = false;        // 이메일 인증번호 확인



$(document).ready(function(){
	
	$("#signup-id").focusout(function(){
		
		var id = $('#signup-id').val();    //id 입력 란

		/* 아이디 유효성검사 */
        if(id == ""){
            $('.final_id_ck').css('display','block');
            idCheck = false;
        }else{
            $('.final_id_ck').css('display', 'none');
            idCheck = true;
        }
	});
	
	
	
    /* 비밀번호  유효성검사 */
    $("#signup-pw").focusout(function(){
		
		var pw = $('#signup-pw').val();
		
        if(pw == ""){
            $('.final_pw_ck').css('display','block');
            idCheck = false;
        }else{
            $('.final_pw_ck').css('display', 'none');
            idCheck = true;
        }
	});
		
        /* 이름 확인 검사 */
	
	$("#signup-name").focusout(function(){
		
		
		var name = $('#signup-name').val();
		
        if(name == ""){
            $('.final_name_ck').css('display','block');
            idCheck = false;
        }else{
            $('.final_name_ck').css('display', 'none');
            idCheck = true;
        }
        
	});
        
        /* 생년월일 (년도) */
    	
    $("#signup-birth-yy").focusout(function(){
    		
    		
    	var birthyy = $('#signup-birth-yy').val();
    		
          if(birthyy == ""){
               $('.final_birth-yy_ck').css('display','block');
               idCheck = false;
           }else{
               $('.final_birth-yy_ck').css('display', 'none');
               idCheck = true;
           }
        
	});

	    /* 생년월일 (월) */

	$("#signup-birth-mm").focusout(function(){
	
	
		var birthmm = $('#signup-birth-mm').val();
		
		  if(birthmm == "월"){
		   $('.final_birth-mm_ck').css('display','block');
		       idCheck = false;
		   }else{
		       $('.final_birth-mm_ck').css('display', 'none');
		           idCheck = true;
		   }

	});


		/* 생년월일 (일) */

    $("#signup-birth-dd").focusout(function(){
		
		
    	var birthdd = $('#signup-birth-dd').val();
    		
          if(birthdd == ""){
               $('.final_birth-dd_ck').css('display','block');
               idCheck = false;
           }else{
               $('.final_birth-dd_ck').css('display', 'none');
               idCheck = true;
            }

	});
    
    /* 생년월일 (일) */
    
    $("#signup-birth-dd").focusout(function(){
		
		
    	var birthdd = $('#signup-birth-dd').val();
    		
          if(birthdd == ""){
               $('.final_birth-dd_ck').css('display','block');
               idCheck = false;
           }else{
               $('.final_birth-dd_ck').css('display', 'none');
               idCheck = true;
           }

	});
			
        /* 성별  검사 */

	$("#signup-gender").focusout(function(){
		
		
		var gender = $('#signup-gender').val();
		
	
        if(gender == "성별"){
            $('.final_gender_ck').css('display','block');
            idCheck = false;
        }else{
            $('.final_gender_ck').css('display', 'none');
            idCheck = true;
        }
	});
	
	
		 /* 이메일 검사 */		
			
	$("#signup-email").focusout(function(){
		
		var email = $('#signup-email').val();
		
	
	    if(email == ""){
	        $('.final_mail_ck').css('display','block');
	        idCheck = false;
	    }else{
	        $('.final_mail_ck').css('display', 'none');
	        idCheck = true;
	    }
	    
	    
	});
	    
	   //  비밀번호 유효성검사 일치, 불일치   
	    $("#signup-pww").blur(function(){
	    	var pw = $('#signup-pw').val();
	    	var pww = $('#signup-pww').val();
	
	    	if($('#signup-pw').val() == $('#signup-pww').val()){
	            $('.pw-correct').html("비밀번호가 일치합니다.");
	            $('.pw-correct').css('color','red')
	            
	        }else{
	        	console.log("bbb")
	        	$('.pw-correct').html("비밀번호가 불일치합니다.");
	        	$('.pw-correct').css('color','red')
	            idCheck = true;
	        }
	});
    
    
    /*아이디 정규식*/
    
    
    var idReg = /^[a-z0-9]{5,19}$/g;
    $("#signup-id").blur(function(){
    	
        if( !idReg.test( $("input[name=id]").val())) {
           $('.id-correct').text("아이디는 영문자로 시작하는 6~20자 영문자 또는 숫자이어야 합니다.");
           $('.id-correct').css('color','red')
           $(this).focus();
           
        
        }else{
        	
        	$('.id-correct').text("알맞은 아이디입니다.");
        	$('.id-correct').css('color','red')
        }

    });
    
    
    /* 비밀번호 정규식*/		        
    $("#signup-pw").blur(function(){
    
    	var reg = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,20}$/;

    	if(!reg.test($("#signup-pw").val())){
    		 
    		 $('.pw-valid').html("'영문, 숫자, 특수문자 혼합하여 8~20자리 이내의 비밀번호 사용해야합니다.'");
	         $('.pw-valid').css('color','red')
	        
	         
    	}else{
    		
    		 $("#signup-pw").val() !=(""); 
    		 $('.pw-valid').html("알맞은 비밀번호입니다.")
    	}

    });

		        
	/* 가입하기 버튼 눌럿을 때  빈칸 alert창  띄우기 */
	
	$(".regist").on("click", function(){
		
	
		if($("#signup-id").val()==""){
			alert("아이디를 입력해주세요.");
			$("#signup-id").focus();
			return false;
		}
		
		if($("#signup-pw").val()==""){
			alert("비밀번호를 입력해주세요.");
			$("#signup-pw").focus();
			return false;
		}
		
		if($("#signup-pww").val()==""){
			alert("비밀번호를 한번 더 입력해주세요.");
			$("#signup-pww").focus();
			return false;
		}
		   
		if($("#signup-name").val()==""){
			alert("이름을 입력해주세요.");
			$("#signup-name").focus();
			return false;
		}
		
		if($("#signup-birth-yy").val()==""){
			alert("년도를 입력해주세요 .");
			$("#signup-birth-yy").focus();
			return false;
		}
		
		if($("#signup-birth-mm").val()=="월"){
			alert("월 입력해주세요 .");
			$("#signup-birth-mm").focus();
			return false;
		}
		
		if($("#signup-birth-dd").val()==""){
			alert("일 입력해주세요 .");
			$("#signup-birth-dd").focus();
			return false;
		}
		
		if($("#signup-gender").val()=="성별"){
			alert("성병을 입력해주세요 .");
			$("#signup-gender").focus();
			return false;
		}
		
		
		if($("#signup-email").val()==""){
			alert("이메일 입력해주세요 .");
			$("#signup-email").focus();
			return false;
		}

	});
});