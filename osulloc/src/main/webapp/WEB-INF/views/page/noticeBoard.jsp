<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
		<title>Insert title here</title>
	    
	    <link rel="preconnect" href="https://fonts.googleapis.com">
	    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    	    
	    <link rel="stylesheet" href="../resources/css/noticeBoard.css" type="text/css">
	    <link rel="stylesheet" href="../resources/css/header.css" type="text/css">
	    <link rel="stylesheet" href="../resources/css/footer.css" type="text/css">
	    
	    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	    <script src="../resources/js/header.js"></script>
    	<script src="../resources/js/noticeBoard.js"></script>     
	</head>
	<body>
        <!-- 게시판 목록리스트 -->
       	<%@ include file="../Header&Footer/header.jsp" %>
        <div id="wrap">
            <div id="container">
            	<h2>공지사항</h2>

			<form id = "actionForm" action="/osulloc/page/noticeBoard" method="get">
              <div class="find">
                
                <div class="textQ">
                   <input id="keyword" type="text" name="keyword" value="${pageMaker.cri.keyword}" placeholder="검색어를 작성해주세요">
                  <button class="searchB">검색</button>
                  
                  <select name="amount" class="showNum">
                    <option value="5" <c:if test="${pageMaker.cri.amount=='5'}"> selected</c:if>>5개씩</option>
                    <option value="10" <c:if test="${pageMaker.cri.amount=='10'}"> selected</c:if>>10개씩</option>
                    <option value="15" <c:if test="${pageMaker.cri.amount=='15'}"> selected</c:if>>15개씩</option>
               	 </select>
                  
                  <input type="hidden" class="pageNum" name="pageNum" value="${pageMaker.cri.pageNum}">
               
               <select name="search" id="selectQ">
                    <option value="T" <c:if test="${pageMaker.cri.search=='T'}"> selected </c:if>>제목</option>
					<option value="C" <c:if test="${pageMaker.cri.search=='C'}"> selected </c:if>>내용</option>
					<option value="W" <c:if test="${pageMaker.cri.search=='W'}"> selected </c:if>>작성자</option>
					<option value="TC" <c:if test="${pageMaker.cri.search=='TC'}"> selected </c:if>>제목 + 내용</option>
					<option value="TCW" <c:if test="${pageMaker.cri.search=='TCW'}"> selected </c:if>>제목 + 내용 + 작성자</option>
                </select>
                
                </div>
              </div>
              
              <div class="conTop">
                    <p class="totalCon"> <input type="text" value="0"> 개의 글</p>
               </div>
			</form>
		
			<table class="contain">
			
			    <th>
			
			      <tr>
			        <td class="contents">
			          <p class="bno">번호</p>
			          <p class="title">제목</p>
			          <p class="writer">작성자</p>
			          <p class="regdate">등록일</p>
			          <p class="cnt">조회수</p>
			          <!-- <p class="good">좋아요</p> -->
			        </td>
			      </tr>
			      
			      <c:forEach items="${list}" var="board">
			
				       <tr>
				         <td class="contents">
				           <p class="bno"><a href="/osulloc/page/detail?bno=${board.bno}">${board.bno}</a></p>
				           <p class="title title_c"><a href="/osulloc/page/detail?bno=${board.bno}">${board.title}</a></p>
				           <p class="writer">${board.writer}</p>
				           <p class="regdate">${board.regdate}</p>
				           <p class="cnt">${board.cnt}</p>
				          <%--  <p class="good">${board.good}</p> --%>
				         </td>
				       </tr>
				   </c:forEach>
			    </th>
			</table>
			
			
			<c:if test="${login!=null}">
	           <button class="writeB">
					<a href="/osulloc/page/write"  class="page-link b_write">글쓰기</a>
				</button>
			</c:if>
			
			            
			<form id = "actionForm" action="/osulloc/page/noticeBoard" method="get">
			
				 <div class="page">    
				     <ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li class="paginate_button page-item pageL " id="dataTable_previous">
								<a href="${pageMaker.startPage-1}" class="page-link PNum">prev</a>
							</li>
						</c:if>
				
						<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
							<li class="paginate_button page-item pageC">
								<a href="${num}" class="page-link PNum">${num}</a>
							</li>
						</c:forEach>
						
						<c:if test="${pageMaker.next}">
							<li class="paginate_button page-item pageR" id="dataTable_next">
								<a href="${pageMaker.endPage+1}" class="page-link PNum">next</a>
							</li>
						</c:if>
					</ul>
				
				 </div><!--.page-->
			    
			</form>       
				     
		</div><!--#containder-->
	</div><!--#wrap-->
	<%@ include file="../Header&Footer/footer.jsp" %>
</body>
</html>

<!-- a -->