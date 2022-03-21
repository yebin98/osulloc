<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    
    <link rel="stylesheet" type="text/css" href="../resources/css/detail.css">
    <link rel="stylesheet" href="../resources/css/header.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/footer.css" type="text/css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<!-- <script type="text/javascript" src="../resources/js/detail.js"></script> -->
	<script src="../resources/js/header.js"></script>
	
    <title>Document</title>
</head>
<body>
<%@ include file="../Header&Footer/header.jsp" %>
    <div class="wrap">
        <!-- <div class="bc_header">
            <h1>고객센터</h1>
            <ul>
                <li class = "line">
                    <a href="">오설록 뉴스</a>S
                </li>
                <li>
                    <a href="">Event</a>
                </li>
                <li>
                    <a href="">Q&A</a>
                </li>
                <li>
                    <a href="">Membership&Point</a>
                </li>
            </ul>
        </div>본문_헤더 -->
        
        
        <div class="board_container">
            <div class="bc_container">
            	<div id="bno">${detail.bno}</div>
            	<div class="bcc_header">
	                <div class="bcc_header1">
	                    <h2>${detail.title}</h2>
	               
	                </div><!--본문_본문_제목-->
	                
	                
	                <div class="bcc_header2">
	                
	                	<p id="bcc_date">${detail.regdate}</p>
	                	
	                    <div id="bcc_nameNwatch">
	                        <p class="nickname">${detail.writer}</p>
		                    <p class="watch">
		                    	조회수 <span id="watch">${detail.cnt}</span>
		                    </p>
	                    </div>
	                    
	                </div><!--본문_본문_제목-->
	                
	                
                </div>
                
                <div class="bbc_container">
                    <p>${detail.content}</p>
                </div><!--본문_본문_본문-->
                
               	<div id="uploadResult">
			   		<ul></ul>
			   	</div>
			   	
			   	
                <%-- <div class="replyList">
                	<button class="rebtn" id="addReplyBtn">
		               	댓글
		            </button>
	                <div class="rewrite">
	                	<div>
			            	<ul id="relist"></ul>
			            </div>
			            
			            <div class="replyBox">
	                       <!-- <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> -->
	                       <h4>댓글 쓰기</h4>
	                       <input type="hidden" name="rno" class="">
	                       <div class='replyBox_replyer'>
		                  		<label>Replyer</label><br>
		                       	<input type="text" name="replyer" value="${login.id}">
	                       </div>
	                       <div class='replyBox_reply'>
	                       		<label>Reply</label><br>
	                       		<textarea rows="" cols="" name="reply"  }></textarea>
	                       </div>
	                       <div class="replyFooter modal-footer">
			                   	<button type="button" class="rebtn" id="replyRegisterBtn">댓글쓰기</button>
			                   	<button type="button" class="rebtn" id="replyModBtn">댓글수정</button>
			                   	<button type="button" class="rebtn" id="replyRemoveBtn">댓글삭제</button>
		                      	<button type="button" class="rebtn" id="close">Close</button>
		                   </div>
	                   </div>	 
	                                     
				    </div>
                </div> --%>
                
                
                <div class="board_btn">
                    <a href="/osulloc/page/noticeBoard" class="b_btn">목록</a>
                    
                    <c:if test="${login!=null}">
      					<div class="write">
      						<a href="/osulloc/page/write"  class="page-link b_btn">글쓰기</a>
      					</div>
               		</c:if>
               		
					<a href="/osulloc/page/modify?bno=${detail.bno}">수정</a>
			    	<a href="/osulloc/page/remove?bno=${detail.bno}">삭제</a>
                </div><!--본문_본문_푸터-->
            </div><!--본문_본문-->
            
            <form>
            <div class="bc_footer">
                <ul>
                    <c:if test="${not empty detail2.prebno}">
                    
	                    <li>
	                            <p class="footer_title1">이전글</p>
	                            
	                            <p class="footer_title">
	                            	<a href="/osulloc/page/detail?bno=${detail2.prebno}">${detail2.pretitle}</a>
	                            </p>
	                            
	                            <p class="footer_title2">${detail2.preregdate}</p>
	
	                    </li>
                    
                    
                    </c:if>
                    
                    <c:if test="${not empty detail2.nextbno}">
                    
	                    <li>
	
	                            <p class="footer_title1">다음글</p>
	                            
								<p class="footer_title">
	                            	<a href="/osulloc/page/detail?bno=${detail2.nextbno}">${detail2.nexttitle}</a>
	                            </p>                            
	                            <p class="footer_title2">${detail2.nextregdate}</p>
	
	                    </li>
                    
                    </c:if>
                </ul>
            </div><!--본문_푸터-->
            </form>
            
            
        </div><!--본문-->
    </div>
<%@ include file="../Header&Footer/footer.jsp" %>
<script type="text/javascript" src="../resources/js/detail.js"></script>
</body>
</html>

<!-- a -->
