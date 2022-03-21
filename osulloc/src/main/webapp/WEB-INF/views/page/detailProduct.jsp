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
	
	<link href="../resources/css/header.css" rel="stylesheet" type="text/css">
	<link href="../resources/css/footer.css" rel="stylesheet" type="text/css">
	<link href="../resources/css/detailProduct.css" rel="stylesheet" type="text/css">
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="../resources/js/header.js"></script>
	
</head>
<body>
	<%@ include file="../Header&Footer/header.jsp" %>
	<div class="wrap">

        <div class="container">
        
        	<form id="productForm" method="post">
        	
      			<div><input type="hidden" name="prodnum" value="${productse.prodnum}"></div>
				<div><input type="hidden" name="name" value="${productse.name}"></div>
				<div><input type="hidden" name="price" value="${productse.price}"></div>
				<div><input type="hidden" name="sale" value="${productse.sale}"></div>
				<div><input type="hidden" name="filename" value="${productse.filename}"></div>
		
		
	            <div class="product">
	                <div class="left_detail">
	                    <div class="left_i">
	                        <img src="/osulloc/display?fileName=${productse.filename}" alt="">
	                    </div>
	                    <div class="left_r">
	                        <a href="#">
	                            <p class="review">리뷰보기</p>
	                        </a>
	                    </div>
	                </div><!--.left_detail-->
	                <div class="right_detail">
	                
	                   <form action="" method="get">
		                   	<div class="detail_t">
		                        <p class="detail_t_name" >${productse.name}</p>
		                        <p class="detail_t_write">${productse.petc}</p>
		                        <p class="detail_t_price">${productse.price}원</p>
		                        <p class="detail_t_discount">${productse.sale}원</p>
		                   	</div><!--.detail_t-->
	                   </form>
	                    
	                    
	                    <div class="detail_c">
	                        <div class="detail_buy">
	                            <p>구매수량</p>
	                            <div class="b_num">
	                                <p id="minus">-</p>
	                                <input type="text" value="1" id="num" name="number">
	                                <p id="plus">+</p>
	                            </div>
	                        </div>
	                    </div><!--.detail_c-->
	                    <div class="detail_b">
	                        <div class="total_b">
	                            <p>상품금액 합계</p>
	                            <input type="hidden" value= "${productse.sale}" id="total">
	                            <p class="total">
	                            	<strong class="price">${productse.sale}</strong>원
	                            </p>
	                        </div>
	                        <div class="button_b">
	                            <button type="button" name="cart" id="cart">
	                                <p class="btn">
	                                    <span>장바구니</span>
	                                </p>
	                            </button>
	                            <button type="button" name="buy" id="buy">
	                                <a href="#" class="btn">
	                                    <span>바로구매</span>
	                                </a> 
	                            </button>
	                        </div>
	                    </div><!--.detail_b-->
	                </div><!--.right_detail-->
	            </div><!--.product-->
            </form> 
            
            <div id="reviewD">
            	<div class="reviewDS">
            		<strong>리뷰</strong>
            	</div>
            	
            	<c:if test="${login != null}">
	            	<div class="reviewW">
	            		<a href="/osulloc/page/reviewWrite?prodnum=${productse.prodnum}">리뷰 작성하기</a>	
	            	</div>
            	</c:if>
            	
            	<ul>
            		<c:forEach items="${productcri}" var="productreview">
            		
            			<c:if test="${productreview.prodnum == productse.prodnum}">
            			
            				<input type="hidden" class="pageNum" name="pageNum" value="${pageMaker.cri.pageNum}">
		            		
			            		<li>

			            			<input type="hidden" class="relistPno" value="0">

			            			<div id="r_detail">
			            				<input type="hidden" id="pno${productreview.pno}" value="${productreview.pno}">
			            				<div class="pno" hidden>${productreview.pno}</div>
			            				<div class="uploadResult"><img src="/osulloc/display?fileName=${productse.filename}" alt=""></div>
				            			<div class="detail_right">
				            				<p class="detail_right_writer">${productreview.writer}</p>
				            				<p class="detail_right_regdate">${productreview.regdate}</p>
				            				<p class="detail_right_title">${productreview.title}</p>
				            				<p class="detail_right_content">${productreview.content}</p>
				            				<c:if test="${login != null}">
					            				<button type="button"class="detail_right_more" id="detail_right_more${productreview.pno}"  data-pno="${productreview.pno}">:</button>
					            				<div class="more" id="more${productreview.pno}" data-pno="${productreview.pno}">
					            					<a href="/osulloc/page/reviewModify?prodnum=${productse.prodnum}&pno=${productreview.pno}">수정</a>
					            					<a href="/osulloc/page/reviewdelete?prodnum=${productse.prodnum}&pno=${productreview.pno}">삭제</a>
					            				</div>
					            			</c:if>
				            			</div>
			            			</div>
			            			
			            			<button class="mrebtn addReplyBtn" data-pno="${productreview.pno}">
							               	댓글
							        </button>
							        <div class="reply" id="reply${productreview.pno}">
							 
							        <ul  class="relist" id="relist${productreview.pno}" data-pno="${productreview.pno}"></ul></div>
							        <div class="rewrite" id="rewrite${productreview.pno}" data-pno="${productreview.pno}"></div>
			            		</li>
            			</c:if>
            			
            		</c:forEach>
	
            	</ul>
            	
            	<form id = "actionForm" action="/osulloc/page/detailProduct" method="get">
            		<input type="hidden" name="prodnum" value="${productse.prodnum}">
	            	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
	            	<input type="hidden" name="amount" value="${pageMaker.cri.amount}">

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
            </div><!-- #reviewD -->
        </div><!--.container-->
    </div><!--.wrap-->
	<%@ include file="../Header&Footer/footer.jsp" %>
	<script src="../resources/js/detailProduct.js"></script>
</body>
</html>
