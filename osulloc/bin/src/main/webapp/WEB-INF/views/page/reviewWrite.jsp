<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    
    <link rel="stylesheet" type="text/css" href="../resources/css/reviewWrite.css">
	<link rel="stylesheet" href="../resources/css/header.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/footer.css" type="text/css">
    
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="../resources/js/header.js"></script>
</head>
<body>
	<%@ include file="../Header&Footer/header.jsp" %>
	<div class="wrap">
		<div class="container">
			<h1 class="titleW">상품 리뷰</h1>
			<form action="/osulloc/page/reviewWrite" method="post" role="form">
				<input type="hidden" name="prodnum" value="${productse.prodnum}">
				<input type="hidden" name = "writer" value="${login.id}">
				<%-- <div class = "modifyBtn">
			    	<button class="write" type="submit">
			    		<a href="/osulloc/page/detailProduct?prodnum=${productse.prodnum}">
			    			글쓰기
			    		<!-- </a> -->	
			    	</button>
			    	<button class="list">
			    		<a href="/osulloc/page/detailProduct?prodnum=${productse.prodnum}">목록으로</a>
			    	</button>
			    </div> --%>
				<div>
				    <div>
				        <input type="text" name="title" class="title" placeholder="제목을 입력해 주세요">
				    </div>
				    <div>
				    	<textarea rows="30" cols="20" name="content"  class="content" placeholder="내용을 입력하세요"></textarea>
				    </div>
				    <!-- <div id="uploadResult">
				   		<ul></ul>
				   	</div>
				    <div>가상의 form태그를 만들어 줌
				        <input type="file" name="uploadFile" class="file" multiple>
				    </div> -->
		       	</div>
		       	<div class = "writeBtn">
			    	<button class="write" type="submit">
			    		<%-- <a href="/osulloc/page/detailProduct?prodnum=${productse.prodnum}"> --%>
			    			글쓰기
			    		<!-- </a> -->	
			    	</button>
			    	<button class="list">
			    		<a href="/osulloc/page/detailProduct?prodnum=${productse.prodnum}">목록으로</a>
			    	</button>
			    </div><!-- .writeBtn -->
			</form>
		</div><!-- .container -->
	</div>	<!-- .wrap -->
	
	<%@ include file="../Header&Footer/footer.jsp" %>
</body>
</html>