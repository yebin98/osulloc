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
    
    <link rel="stylesheet" type="text/css" href="../resources/css/writeNmodify.css">
	<link rel="stylesheet" href="../resources/css/header.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/footer.css" type="text/css">
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="../resources/js/uploadAjax.js"></script>
	<script src="../resources/js/header.js"></script>
</head>
<body>

	<%@ include file="../Header&Footer/header.jsp" %>
	<div class="wrap">
		<div class="container">
			<h1 class="titleW">게시판 글쓰기</h1>
			<form action="/osulloc/page/write" method="post" role="form">
			
				<input type="hidden" name = "writer" value="${login.id}">
				
				<div class = "modifyBtn">
			    	<button class="write"><input type="submit"value="글쓰기" ></button>
			    	<button class="list"><a href="/osulloc/page/noticeBoard" >목록으로</a></button>
			    </div>
				<div>
				    <div >
				        <input type="text" name="title" class="title" placeholder="제목을 입력해 주세요">
				    </div>
				    <div>
				    	<textarea rows="30" cols="20" name="content"  class="content" placeholder="내용을 입력하세요"></textarea>
				    </div>
				    <div id="uploadResult">
				   		<ul></ul>
				   	</div>
				    <div>
				        <input type="file" name="uploadFile" class="file" multiple>
				    </div>
		       </div>
			</form>
		</div>
	</div>	
	<%@ include file="../Header&Footer/footer.jsp" %>
</body>
</html>