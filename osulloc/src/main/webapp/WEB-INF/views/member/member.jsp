<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="../resources/css/member.css" rel="stylesheet" />
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="../resources/js/member.js"></script>
<meta charset="UTF-8">

    <title>회원가입</title>

</head>
<body>
    <body>
 
        <div class="main-signup">
            <!--웹페이지 상단-->
            
            <header>
                <!--osulloc logo-->
                <div class="logo">
                    <a href="../page/mainpage" target="_blank" title="오설록 홈페이지"><img src="../resources/img/오설록 로고.png" class="image"></a>
                </div>
            </header>
    
           <!--회원가입 부분-->
           <form action="/osulloc/member/member" method="post" id="target">
            <section class="signup-wrap">
    
                <div>
                    <!--아이디,비번,비번재확인-->
    
                    <h3>아이디</h3>
                    <span class="signup-input">
                        <input id="signup-id" type="text" name="id"  placeholder="아이디(영문 +숫자)"></input>
                       
                    </span>
                    <span class="final_id_ck">아이디를 입력해주세요.</span>
                    <label class="id-correct"></label>
    
                    <h3>비밀번호</h3>
                    <span class="signup-input">
                        <input id="signup-pw"  type="password"  class ="password" name="password"  placeholder="비밀번호(영문+숫자+특수문자 조합)"></input>
                        <span class="pw-lock"></span>
                    </span>
    				<span class="final_pw_ck">비밀번호를 입력해주세요.</span>
    				<label class="pw-valid"></label>
    				
                    <h3>비밀번호 재확인</h3>
                    <span class="signup-input">
                        <input id="signup-pww" name=signup-pwCheck type="password" placeholder="한번 더 입력해주세요"></input>
                        <span class="pww-lock"></span>
                    </span>
    				<label class="pw-correct"></label>
    				<label class="pwreg"></label>
                </div> 
       
                <div style="margin-top: 35px;">
                    <!--이름,생년월일,성별,이메일-->
                    <h3>이름</h3>
                    <span class="signup-input">
                        <input id="signup-name" type="text" class="name" name="Name"  placeholder="이름을 입력해주세요"></input>
                    </span>
                    
    				<span class="final_name_ck">이름을 입력해주세요.</span>
    				
    				
                    <h3>생년월일</h3>
                    <span style="display: flex;">
                        <span class="signup-input-birth">
                            <input id="signup-birth-yy" type="text" name="year" placeholder="년(4자)"></input>
                        </span>
                       
                        
                        <span class="signup-input-birth" style="margin-left: 10px;">
                            <select id="signup-birth-mm" class="selectbox" name="month" required>
                                <option value="월">월</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                        </span>
                       
                        
                        
                        <span class="signup-input-birth" style="margin-left: 10px;">
                            <input id="signup-birth-dd" name="day" type="text" placeholder="일"></input>
                        </span>
                        
                        
                        
                    </span>
                    <span class="final_birth-yy_ck">태어난 년도 4자리를 정확하게 입력하세요.</span>
                    <span class="final_birth-mm_ck">태어난 월을 선택하세요</span>
                    <span class="final_birth-dd_ck">태어난 일(날짜) 2자리를 정확하게 입력하세요.</span>
                    
    
                    <h3>성별</h3>
                    <span class="signup-input">
                        <select id="signup-gender" class="selectbox" name="gender" onchange="">
                            <option value="성별">성별</option>
                            <option value="man">남자</option>
                            <option value="woman">여자</option>
                            <option value="no">선택 안함</option>
                        </select>
                    </span>
    			<span class="final_gender_ck">성별을 선택해주세요.</span>
    			
    			
                    <span class="choice">
                        <h3>본인 확인 이메일</h3>
                        
                    </span>
                    <span class="signup-input">
                        <input id="signup-email" name = "email" type="email" placeholder="이메일 입력"></input>
                    </span>
    				<span class="final_mail_ck">이메일을 입력해주세요.</span>
                </div>
    
                <div style="margin-top: 35px;">
                    <!--가입하기-->
                    <div class="signup-btn-wrap">
                        <button type="submit"  id="signup-btn" name ="submit" class=regist>가입하기</button>
                    </div>
                </div>
            </section>           
           </form> 

        </div>
    
    </body>
   
    </html>

