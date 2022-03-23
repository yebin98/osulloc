<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    
    
	<link href="../resources/css/mainpage.css" rel="stylesheet" type="text/css">
	<link href="../resources/css/header.css" rel="stylesheet" type="text/css">
	<link href="../resources/css/footer.css" rel="stylesheet" type="text/css">
	
	<script src="../resources/js/header.js"></script>
	

</head>
<body>

<%@ include file="../Header&Footer/header.jsp" %>

	<div class="wrap">
		
		<div id="container">
		           <!-- 본문1 -->
		    <div class="main1">
		    
		        <div class="msImg">
		            <a href="#"><img src="../resources/img/tea_time1.jpg" class="magazine"></a>
		        </div><!--msImg-->
		
		        <div class="msPager">
		            <ul>
		                <li><a href="#">일구다<br>가꾸다</a></li>
		                <li><a href="#">Since<br> 1979</a></li>
		                <li><a href="#">오설록<br> 차밭</a></li>
		                <li><a href="#">숫자로보는<br>오설록</a></li>
		                <li class="on"><a href="#">차<br>하우스</a></li>
		            </ul>
		        </div>
		    </div><!--.mainSlide-->
		
		    <!-- 본문2 -->
		    <section class="main2">
		        <h2>차 알아보기</h2>
		        <ul>
		            <li class="tea1">
		                <a href="#">
		                    <p class="over">
		                        <span>명차</span>
		                    </p>
		                </a>
		            </li>
		            <li class="tea2">
		                <a href="#">
		                    <p class="over">
		                        <span>녹차/발효차/홍차</span>
		                    </p>
		                </a>
		            </li>
		            <li class="tea3">
		                <a href="#">
		                    <p class="over">
		                        <span>건강차</span>
		                    </p>
		                </a>
		            </li>
		            <li class="tea4">
		                <a href="#">
		                    <p class="over">
		                        <span>꽃/과일차</span>
		                    </p>
		                </a>
		            </li>
		        </ul>
		    </section><!--.main2-->
		
		    <section class="main3">
		        <h2 class="m3_title"><a href="#">▽</a> 나만의 맞춤제품</h2>
		        
		        <form id="actionForm" action="/osulloc/page/mainpage" method="get"> 
			        <div class="taste">
			            <select name="kind" id="" class="t_kind">
			                <option >종류</option>
			                <option value="명차">명차</option>
			                <option value="녹차">녹차</option>
			                <option value="홍차">홍차</option>
			                <option value="발효차">발효차</option>
			                <option value="건강차">건강차</option>
			                <option value="꽃/과일차">꽃/과일차</option>
			                <option value="뷰티">뷰티</option>
			            </select>
			            <select name="scent" id="" class="t_scent">
			                <option >향</option>
			                <option value="달달한향">달달한향</option>
			                <option value="상큼한향">상큼한향</option>
			                <option value="고소한향">고소한향</option>
			                <option value="꽃향">꽃향</option>
			                <option value="과일향">과일향</option>
			            </select>
			            <select name="type" id="" class="t_product">
			                <option >상품타입</option>
			                <option value="단품">단품</option>
			                <option value="세트">세트</option>
			            </select>
			            
			            <!-- <div class="checkbox" >
			                <div class="color">
			                    <input type="checkbox" name="color" id="red" value="red">
			                    <label for="red" class="color_red"></label>
			                </div>
			                <div class="color">
			                    <input type="checkbox" name="color" id="orange" value="orange">
			                    <label for="orange" class="color_orange"></label>
			                </div>
			                <div class="color">
			                    <input type="checkbox" name="color" id="yellow" value="yellow">
			                    <label for="yellow" class="color_yellow"></label>
			                </div>
			                <div class="color">
			                    <input type="checkbox" name="color" id="green" value="green">
			                    <label for="green" class="color_green"></label>
			                </div>
			                <div class="color">
			                    <input type="checkbox" name="color" id="blue" value="blue">
			                    <label for="blue" class="color_blue"></label>
			                </div>
			                <div class="color">
			                    <input type="checkbox" name="color" id="purple" value="purple">
			                    <label for="purple" class="color_purple"></label>
			                </div>
			                <div class="color">
			                    <input type="checkbox" name="color" id="black" value="black">
			                    <label for="black" class="color_black"></label>
			                </div>
			            </div> -->

			            <div><input type="submit" value="검색" id="proSubmit"></div>

			        </div><!--.taste-->
			        
		        </form>
		
		        <div class="m3_item">
		        
		            <ul  style="overflow: hidden">

		            	<c:forEach items="${product}" var="product">
			                <li>
			                    <div class="m3_item_box">
			                        <p class="m3_ib_img">
			                            <a href="/osulloc/page/detailProduct?prodnum=${product.prodnum}">
			                            	<img src="/osulloc/display?fileName=${product.filename}" alt="">
			                            </a>
			                        </p>
			                        <p><input type="hidden" value="${product.prodnum}"></p>
			                        <p class="m3_ib_name"><a href="/osulloc/page/detailProduct?prodnum=${product.prodnum}">${product.name}</a></p>
			                        <p class="m3_ib_prise">${product.sale}원</p>
			                    </div>
			                    
			                    <div class="num_cart">
			                        <form action="/osulloc/page/mainpage" method="post">
			                            <select name="number" >
			                                <option value="1" selected="select">1</option>
			                                <option value="2">2</option>
			                                <option value="3">3</option>
			                                <option value="4">4</option>
			                                <option value="5">5</option>
			                                <option value="6">6</option>
			                                <option value="7">7</option>
			                                <option value="8">8</option>
			                                <option value="9">9</option>
			                                <option value="10">10</option>
			                            </select>
			                            <p><input type="submit" value="장바구니" id="cart"></p>
			                            
			                         <div>
				                    	<input type="hidden" name="name"  value="${product.name}">
				                    	<input type="hidden" name="sale"  value="${product.sale}">
				                    	<input type="hidden" name="price"  value="${product.price}">
				                    	<input type="hidden" name="number"  value="${product.number}">
				                    	<input type="hidden" name="filename" value="${product.filename}">
			                   		 </div>
			                   		 
			                        </form>
			                    </div>
			                    
			                </li>

		                </c:forEach>
		                		            
			            <div class="main3_a">
				            <div class="main3_l">
				                <a href="#">왼쪽으로 가기</a> 
				            </div>
				            <div class="main3_r">
				                <a href="#">오른쪽으로 가기</a>
				            </div>
		        		</div>

		            </ul>

		        </div><!--item-->

		    </section><!--.main3-->
		
		    <section class="main4">
		        <h2 class="m4_title"><a href="#">▽</a> 이번주 할인상품 <p>(전제품 할인!!!)</p></h2>
		        <div class="m4_item" >
		            <ul  style="overflow: hidden">
		            	<c:forEach items="${product2}" var="product2">
			                <li>
		                    	<div class="m4_item_box">
			                        <p class="m4_ib_img">
 			                            <a href="/osulloc/page/detailProduct?prodnum=${product2.prodnum}">
											<img src="/osulloc/display?fileName=${product2.filename}" />
 			                            </a>	                        </p>
			                        <p><input type="hidden" value="${product2.prodnum}" name="prodnum"></p>
			                        <p class="m4_ib_name"><a href="">${product2.name}</a></p>
			                        <p>
			                        	<span class="m4_ib_prise">${product2.price}원</span>
			                            <span class="m4_ib_prise_d">${product2.sale}원</span> &nbsp;
			                            
			                        </p>
		                    	</div>

			                    <div class="num_cart">
			                        <form action="/osulloc/page/mainpage" method="post">
			                        
			                            <select name="number" id="">
			                                <option value="1" selected="select">1</option>
			                                <option value="2">2</option>
			                                <option value="3">3</option>
			                                <option value="4">4</option>
			                                <option value="5">5</option>
			                                <option value="6">6</option>
			                                <option value="7">7</option>
			                                <option value="8">8</option>
			                                <option value="9">9</option>
			                                <option value="10">10</option>
			                            </select>
			                            
			                            <p><input type="submit" value="장바구니" id="cart"></p>
			                            
			                         <div>
				                    	<input type="hidden" name="name"  value="${product2.name}">
				                    	<input type="hidden" name="price"  value="${product2.price}">
				                    	<input type="hidden" name="sale"  value="${product2.sale}">
				                    	<input type="hidden" name="number"  value="${product2.number}">
				                    	<input type="hidden" name="filename" value="${product2.filename}">
			                   		 </div>
			                            
			                        </form>
			                    </div>

			                    
			                </li>

		                </c:forEach>
		                
		                <div class="main4_a">
				            <div class="main4_l">
				                <a href="#">왼쪽으로 가기</a> 
				            </div>
				            <div class="main4_r">
				                <a href="#">오른쪽으로 가기</a> 
				            </div>
			        	</div>
		            </ul>
		            
		        </div><!--m4_item-->

		    </section><!--.main4-->
		</div><!--#container-->
		
	</div>
	
	<script src="../resources/js/mainpage.js"></script>
	<%@ include file="../Header&Footer/footer.jsp" %>
</body>
</html>




