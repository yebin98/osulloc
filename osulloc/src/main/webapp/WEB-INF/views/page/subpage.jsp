<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
	<title>subPage </title>

     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
     <script src="../resources/js/header.js"></script>
     
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="../resources/css/subpage.css" type="text/css">
     <link rel="stylesheet" href="../resources/css/header.css" type="text/css">
     <link rel="stylesheet" href="../resources/css/footer.css" type="text/css">
</head>
<body>

<div id="wrap">
       <%@ include file="../Header&Footer/header.jsp" %>

        <div class="container">

            <h1><br>M<br><br>A<br><br>G<br><br>A<br><br>Z<br><br>I<br><br>N<br><br>E<br></h1>

            <div class="magazine1">

                <h2><span>티와 일상</span></h2>

                <div class="box">

	                 <ul>
	                     <li>
	                         <div class="view">
	                         	<input type="hidden" value="1">
	                             <img src="../resources/img/아기.png" alt="">
	                             <p class="story">여름철 햇차로 즐기는 아이스티</p>
	                         </div>
	                     </li>

	                     <li>
	                         <div class="view">
		                         <input type="hidden" value="2">
		                         <img src="../resources/img/산책과 아침.png" alt="">
		                         <p class="story">오설록 직원들이 차를 즐기는 시간</p>
	                         </div>
	                     </li>
	
	                     <li>
	                         <div class="view">
								<input type="hidden" value="3">
	                         	<img src="../resources/img/공예가 가족.png" alt="">
	                         	<p class="story">좋지 아니한家·유어예</p>
	                         </div>
	                     </li>
	
	                     <li>
	                         <div class="view">
		                         <input type="hidden" value="4">
		                         <img src="../resources/img/제주녹차.jpg" alt="">
		                         <p class="story">오설록 월출산차밭</p>
	                         </div>
	                     </li>
	
	                     <li>
	                         <div class="view">
		                         <input type="hidden" value="5">
		                         <img src="../resources/img/운중산책.jpg" alt="">
		                         <p class="story">운중산책</p>
	                         </div>
	                     </li>
	
	                     <li>
	                         <div class="view">
		                         <input type="hidden" value="6">
		                         <img src="../resources/img/일상 반사.jpg" alt="">
		                         <p class="story">일상茶반사</p>								
	                         </div>
	                     </li>
	
	                     <li>
	                         <div class="view">
	                         	<input type="hidden" value="7">
	                             <img src="../resources/img/장인.jpg" alt="">
	                             <p class="story">장인</p>
	                         </div>
	                     </li>
	
	                     <li>
	                         <div class="view">
	                         	<input type="hidden" value="8">
	                             <img src="../resources/img/녹차 빵.png" alt="">
	                             <p class="story">Tea & Tea Food</p> 
	                         </div>
	                     </li>
	
	                     <li>
	                         <div class="view">
	                         	<input type="hidden" value="9">     
	                             <img src="../resources/img/티하우스..png" alt="">
	                             <p class="story">좋은 친구들</p>
	                         </div>   
	                     </li>
	                 </ul>
	             </div>
            </div><!--.magazine-->
            
            <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            

			        <div class="modal-content">
			            <div class="modal-header">
	
			             	<h4 class="modal-title" id="myModalLabel">여름철 햇차로 즐기는 아이스티</h4>
			            </div>
			            <div class="modal-body" style="overflow:scroll">
			            
			            	<div class="article-cont">
								<div class="featured-item">
								    <img src="?quality=80" alt="여름철 햇차로 즐기는 아이스티">
								</div>
								
								<div class="sticky-pad">
								    <header class="article-header" data-position="sticky" data-top="120">
								        <div class="article-header-pad">
								            <span class="add-on">2021 GOLDEN MOMENT <i class="date">2021 summer</i></span>
								            <h1 class="h1 break-word">여름철 햇차로 즐기는 아이스티</h1>
								
								            <div class="article-share">
								                <a href="#" class="article-share-link x-share-facebook" data-href="https://www.facebook.com/sharer/sharer.php?u=http://www.osulloc.com/kr/ko/guide/magazine/2021-summer/73" data-track-name="페이스북 공유">
								                    <i class="icon-facebook-circle" style=""></i>
								                    <span class="blind" hidden>페이스북으로 공유하기</span>
								                </a>
								            </div>
								        </div>
								    </header>
								</div>
								<!--  컨텐츠  -->
								<style type="text/css">
								.featured-item {display:none;}
								.article-cont .article-section * {letter-spacing:-0.05em;}
								</style>
								<div class="article-wrap">
								    <div class="article-section loca_magazine">
								        <h2 class="h">여름에는 주로 과일향이 나는 블렌딩 차를 탄산수나 사이다에 냉침하여 즐기는 경우가 많은 것 같습니다. 더운 날씨에 블렌딩 차의 달콤하고 상큼한 향이 기분을 좋게 만들어주기 때문이겠죠?</h2>
								    </div>
								    <div class="article-img">
								        <img src="../resources/img/여름철 햇차로 즐기는 아이스티_01.jpg" alt="">
								    </div>
								    <div class="article-section">
								        <p>그래서 이번 글에서는 블렌딩 아이스티와는 또다른 매력을 지닌 순수차(녹차나 발효차)를 냉침하여 아이스티를 만드는 방법을 소개해드리고자 합니다. 순수차로 만드는 아이스티는 갈증 해소는 물론, 사계절 내내 생수 대신 마시기에도 더없이 좋답니다. 그럼 올해 갓 채엽한 햇차를 이용해 아이스티 만드는 방법을 소개해 드릴게요. </p>
								    </div>
								</div>
								<div class="article-wrap">
								    <div class="article-img">
								        <img src="../resources/img/여름철 햇차로 즐기는 아이스티_02.jpg" alt="">
								    </div>
								    <div class="article-section">
								        <p>1. 차가운 생수 한 병(500ml)과 세작 티백 1개를 준비해주세요. 집에서 사용하는 일반 물병을 사용해도 좋아요.
								           <br>2. 세작 티백 1개를 생수에 담그고 냉장고에 넣어 8시간 정도 기다려주세요.
								           <br>3. 충분히 우려진 아이스티를 얼음 등과 함께 시원하게 즐겨주세요.
								        </p>
								        <p style="font-weight:700;color:#333;">Tip! 
								           <br>조금 더 진하게 드시고 싶으시다면 물의 양을 줄이거나, 티백의 개수를 늘려보세요. 이때, 우리는 시간이 너무 길어질 경우, 차에서 쓴맛이 우러날 수 있으니 유의하세요.
								        </p>
								    </div>
								</div>
								<div class="article-wrap">
								    <div class="article-img">
								        <img src="../resources/img/여름철 햇차로 즐기는 아이스티_03.jpg" alt="">
								    </div>
								    <div class="article-section">
								        <p>기다리는 시간이 지루하다면, 잠들기 전에 티백 1개만 넣어주세요! 아침에 일어난 후, 시원한 녹차 한잔으로 산뜻한 하루를 시작하실 수 있답니다. 차를 냉침하여 우리면, 쓰고 떫은 맛을 내는 성분이 덜 우러나기 때문에 조금 더 편하게 즐기실 수 있답니다. 
								            <br><br>매년 봄마다 출시되는 햇차를 여름에 즐기기에 부담스러우시다면, 잠들기 전에 냉침을 한번 시도해보면 어떨까요?
								        </p>
								    </div>
								</div>
												                    
							</div><!--  //컨텐츠 -->
	
			            </div><!-- modal-body -->
			            
			            <div class="modal-footer">
			               <button type="button" class="btn btn-default modalBtn" data-dismiss="modal">Close</button>
			            </div>
			      </div><!-- /.modal-content -->
			</div><!-- modal fade --> 

			<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

			        <div class="modal-content">
			            <div class="modal-header">
	
			             	<h4 class="modal-title" id="myModalLabel">오설록 직원들이 차를 즐기는 시간</h4>
			            </div>
			            
			            <div class="modal-body" style="overflow:scroll">
			            
								<div class="article-cont">
								       <div class="featured-item">
								           <img src="?quality=80" alt="오설록 직원들이 차를 즐기는 시간">
								       </div>
								
								       <!--  컨텐츠  -->
								    <style type="text/css">
								.featured-item {display:none;}
								.article-wrap {padding-bottom:5em;}
								.article-box-section {margin:2em 0;}
								.article-box-section > div {float:left;width:387px;box-sizing:border-box;}
								.article-box-section > div:first-child {margin-right:11px;}
								.article-box-section .img-box img {width:100%;height:auto;}
								.article-cont .article-section * {letter-spacing:-0.05em;}
								
								.article-table {margin-top:2em;border:solid #333;border-width:2px 0;}
								.article-table .num {width:82px;padding-left:2px;}
								.article-table th, .article-table td {border-top:1px solid #d6d6d6;padding:35px 0;vertical-align:top;}
								.article-table tr:first-of-type th, .article-table tr:first-of-type td {border:0;}
								.article-table th {font-size:20px;text-align:left;}
								.article-table th:nth-of-type(2) {width:}
								.article-table td {width:50%;padding-right:5px;font-size:15px;}
								.article-table br.m_only {display:none;}
								@media (max-width:79.99em) {
								    .article-box-section > div {width:calc((100% - 11px) / 2);}
								}
								@media (max-width:37.49em) {
								    .article-wrap {padding-bottom:3em;}
								    .article-box-section > div {float:none;width:100%;}
								    .article-box-section > div:first-child {margin:0;margin-bottom:6px;}
								    .article-box-section .article-section {padding-top:1em;}
								    .article-table .num {width:32px;}
								    .article-table th, .article-table td {padding:20px 0;}
								    .article-table th {font-size:14px;} 
								    .article-table th:nth-of-type(2) {width:112px;}
								    .article-table td {width:55%;font-size:12px;}
								    .article-table br.m_only {display:block;}
								}
								</style>
								<div class="article-wrap">
								    <div class="article-section loca_magazine">
								        <h2 class="h">차를 좋아하는 사람들에겐 4월부터 6월까지 이 기간이 특별하게 느껴지는 것 같습니다. 첫물차를 채엽하고, 햇차를 즐기기 좋은 시기이기 때문이죠. 한편으론, 햇차가 출시될 때마다 어떻게 하면 햇차를 더 많이 알릴 수 있을까 고민이 들기도 합니다.</h2>
								    </div>
								    <div class="article-img">
								        <img src="../resources/img/오설록 직원들이 차를 즐기는 시간_01.jpg" alt="">
								    </div>
								    <div class="article-section">
								        <p style="text-align:center;">그렇게 아이디어 회의를 하던 중 문득 나온 생각 한 켠,
								            <br>“다른 사람들은 차와 햇차를 어떻게 즐길까?”
								            <br><br>그래서 이번 글에서 여러분께 오설록 직원이 차와 햇차를 어떻게 즐기는지 그 시간을 간단하게 소개해보고자 합니다. 
								        </p>
								    </div>
								</div>
								<div class="article-wrap">
								    <div class="article-box-section clearfix">
								        <div class="img-box">
								            <img src="../resources/img/오설록 직원들이 차를 즐기는 시간_02.jpg" alt="">
								        </div>
								        <div class="article-section">
								            <p>화장품 제조에서 온 차 입문자,
								                <br><strong class="h" style="font-size:1em;">온라인 영업인 김설록님의 차를 즐기는 시간 </strong> 
								                <br> -
								                <br>저는 주로 회사에서 차를 냉침해 마시는 편이에요. 먼저 티백을 따뜻한 물에 진하게 우린 다음, 얼음을 넣어주면 아이스티가 완성됩니다! 회사 업무를 하다 보면  뜨거운차 보다는 아이스티가 생각나더라구요.
								                <br>
								                <br>오설록 오기 전에는 1년에 1~2번 정도 차를 마실까 말까 했는데, 지금은 아이스티의 매력에 빠져 이제는 하루 한 잔씩 꼭 챙겨 마시고있어요.
								            </p>
								        </div>
								    </div>
								    <div class="article-section">
								        <p>정신없는 근무 시간에도, 나른한 오후 시간에도 아이스티 한잔만으로 나를 위한 편안한 휴식시간이 만들어지더라구요. 역시 여유는 스스로 만드는 건가 봐요. 혹시 지금 차 한잔이 생각난다면 풍부한 감칠맛과 함께 이맘때만 맛볼 수 있는 햇차(세작) 상품도 추천드려요! 다가오는 여름에 냉침한 햇차 아이스티를 마시는 시간이 좋더라구요.</p>
								    </div>
								</div>
								<div class="article-wrap">
								    <div class="article-box-section clearfix">
								        <div class="img-box">
								            <img src="../resources/img/오설록 직원들이 차를 즐기는 시간_03.jpg" alt="">
								        </div>
								        <div class="img-box">
								            <img src="../resources/img/오설록 직원들이 차를 즐기는 시간_04.jpg" alt="">
								        </div>
								    </div>
								    <div class="article-section">
								        <p>차에 진심인 티 소믈리에,
								            <br><strong class="h" style="font-size:1em;">레시피 개발자 김설록님의 차를 즐기는 시간</strong> 
								            <br>-
								            <br>본래는 차를 아침에 즐겨보려 노력했지만, 아침에 일찍 일어나는 루틴을 짜도 실행에 옮기는게 여간 쉽지 않았습니다. 이러저러한 이유로 차는 오후 나른해지는 2~3시에 즐깁니다. 아무리 바빠도 바쁜 순간을 차를 이용해 늘리는 느낌이랄까요. 또, 입이 심심해질 시간이니 건강한 방법으로 입을 즐겁게 해줄 수 있으니 일석이조입니다^^
								            <br>
								            <br>그리고 4~5월이 되면 주로 햇차를 즐기게 되는데요. 티러버들에겐 1년 중 가장 차가 생각나는 때이기도 하죠~ 재철 식재료를 절기에 맞춰 즐기면 기분도 뿌듯하고 입도 즐거워 지는 것 같습니다.
								        </p>
								    </div>
								</div>
								<div class="article-wrap">
								    <div class="article-box-section clearfix">
								        <div class="article-section">
								            <p>티러버의 덕업일치,
								                <br><strong class="h" style="font-size:1em;">순수차 기획자 노설록님의 차를 즐기는 시간</strong>
								                <br>-
								                <br>평일에도 차를 많이 마시지만 주말의 차와는 느낌이 아주 많이 다릅니다. 마음에 여유가 있을 때 즐기는 차는 내 몸과 마음을 차분하게 만들어주는데요.
								                <br>
								                <br>저는 주말 아침에 햇살이 창문으로 들어올 때 딱 적당한 70도의 녹차를 즐깁니다. 드라마를 몰아보면서 함께 하는 차 한잔이 편안하고 충만한 휴식을 주는 것 같아요!
								                <br>
								                <br>지난 겨울 얻은 차씨를 심은 화분을 옆에 놓고, 봄의 기운을 듬뿍 담은 2021년의 햇차를 마시니 에너지가 충전되는 느낌이 드네요. 내 몸을 따뜻하게 해 주는 평온한 주말 아침의 차를 같이 즐겨보아요
								            </p>
								        </div>
								        <div class="img-box">
								            <img src="../resources/img/오설록 직원들이 차를 즐기는 시간_05.jpg" alt="">
								        </div>
								    </div>
								</div>
								<div class="article-wrap">
								    <div class="article-box-section clearfix">
								        <div class="img-box">
								            <img src="../resources/img/오설록 직원들이 차를 즐기는 시간_06.jpg" alt="">
								        </div>
								        <div class="img-box">
								            <img src="../resources/img/오설록 직원들이 차를 즐기는 시간_07.jpg" alt="">
								        </div>
								    </div>
								    <div class="article-section">
								        <p>이제는 딸바보 등극, 
								            <br><strong class="h" style="font-size:1em;">상품 기획자 김설록님의 차를 즐기는 시간</strong> 
								            <br>-
								            <br>평소 혼자 혹은 아내와 같이 차를 즐기는 편입니다. 요즘엔 아이가 잠드는 육퇴 후 차를 많이 찾게 됩니다. 
								            <br>
								            <br>차를 마실 때면 식탁에 아내와 마주보고 앉아, 오늘 찍은 아이 사진 등을 같이 보곤 합니다. 회사에 출근하면서 놓칠 수도 있었던 아이의 모습을 보는 시간이어서 그런지, 저에게는 하루를 마무리하는 것 이상의 의미가 있는 것 같아요.
								            <br>
								            <br>그런 소중한 시간마다 올해 봄 기운을 담은 햇차를 마시곤 합니다. 그 해의 햇차만 지니고 있는 신선함과 풍미를 함께 나누는게 좋더라구요. 햇차를 소중한 사람들과 함께하면 그 시간이 더욱 깊어지는 것 같습니다.
								        </p>
								    </div>
								</div>
								<div class="article-wrap">
								    <div class="article-box-section clearfix">
								        <div class="img-box">
								            <img src="../resources/img/오설록 직원들이 차를 즐기는 시간_08.jpg" alt="">
								        </div>
								        <div class="img-box">
								            <img src="../resources/img/오설록 직원들이 차를 즐기는 시간_09.jpg" alt="">
								        </div>
								    </div>
								    <div class="article-section">
								        <p>귀여운 감성의 소유자, 
								            <br><strong class="h" style="font-size:1em;">웹디자이너 윤설록님의 차를 즐기는 시간</strong> 
								            <br>-
								            <br>아침에 일어나서 한잔, 자기 전에 한잔 하루의 시작과 끝을 차와 함께 보내곤 합니다.
								            <br>
								            <br>아침에는 향긋한 차내음으로 맑은 기분으로 하루를 시작할 수 있고, 자기 전에는 따뜻한 차를 마시면서 몸과 마음이 차분해지는 걸 느낍니다. 특히 자기 전에 차를 천천히 음미하면서 일기를 작성하곤 하는데요. 제 마음 속을 복잡하게 만드는 생각들을 정리하고, 제 자신에 대해 천천히 돌아볼 수 있는 시간인 것 같아요.
								            <br>
								            <br>이렇듯 저는 차를 마시는 것에서 그치는 것이 아니라, 항상 다른 여러 의미를 부여하면서 마시게 됩니다. 요즘엔 햇차가 출시되었기 때문에 주로 햇차를 마시곤 하는데요. 그 해에만 나오는 특별한 차인 만큼, 소중한 사람들과 함께 마시기 좋은 차인 것 같아요. 
								        </p>
								    </div>
								</div>
								<div class="article-img">
								    <img src="../resources/img/오설록 직원들이 차를 즐기는 시간_10S.jpg" alt="">
								</div>
								<div class="article-section">
								    <p>이렇듯 차를 마시는 시간은 언제 어떻게 마시는지에 따라 그 깊이가 달라지는 것 같습니다.
								        <br>여러분은 차를 어떻게 즐기시고 계신가요? 차와 함께하는 시간이 더욱 깊어질 수 있도록 함께 하기 좋은 콘텐츠를 소개해드립니다.
								    </p>
								</div>
								<div class="article-section">
								    <table class="article-table">
								        <tbody><tr>
								            <th class="num">01</th>
								            <th>마인드 그라운드</th>
								            <td>마인드풀한 일상을 돕는 플랫폼으로, 마음챙김을 위한 여러 클래스와 콘텐츠로 구성되어있습니다. 온전히 나에게 집중하는 시간을 가져보세요.</td>
								        </tr>
								        <tr>
								            <th class="num">02</th>
								            <th>밑 미(meet me)</th>
								            <td>'타인'의 기준이 아닌 '진짜' 나에 대해 알아갈 수 있는 '자아성장 큐레이션 플랫폼’입니다.
								                <br>진정으로 원하는 삶을 차와 함께 탐색해보세요.
								            </td>
								        </tr>
								        <tr>
								            <th class="num">03</th>
								            <th>나의 하루는 <br class="m_only">4시 30분에 <br>시작된다.</th>
								            <td>모닝 루틴에 함께하는 차는 또 다른 느낌을 줍니다. 모닝 루틴과 관련된 책을 소개해드려요. 차근차근 나만의 습관을 쌓아 나가 보세요.</td>
								        </tr>
								    </tbody></table>
								</div>
								
											                    <!--  //컨텐츠 -->
								</div>
		
		
			            </div><!-- modal-body -->
			            
			            <div class="modal-footer">
			               <button type="button" class="btn btn-default modalBtn" data-dismiss="modal">Close</button>
			            </div>
			        </div><!-- /.modal-content -->

			</div><!-- modal fade --> 

			<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

			        <div class="modal-content">
			            <div class="modal-header">
	
			             <h4 class="modal-title" id="myModalLabel">좋지 아니한家·유어예</h4>
			            </div>
			            <div class="modal-body" style="overflow:scroll">

								<div class="article-cont">
								              <div class="featured-item">
								                  <img src="?quality=80" alt="좋지 아니한家·유어예">
								              </div>
								
								              <div class="sticky-pad">
								                  <header class="article-header" data-position="sticky" data-top="120">
								                      <div class="article-header-pad">
								                          <span class="add-on">PresenTea FOR US <i class="date">2017 summer</i></span>
								                          <h1 class="h1 break-word">좋지 아니한家·유어예</h1>
								
								                          <div class="article-share">
								                              <a href="#" class="article-share-link x-share-facebook" data-href="https://www.facebook.com/sharer/sharer.php?u=http://www.osulloc.com/kr/ko/guide/magazine/2017-summer/35" data-track-name="페이스북 공유">
								                                  <i class="icon-facebook-circle" style=""></i>
								                        <span class="blind">페이스북으로 공유하기</span>
								                    </a>
								                </div>
								            </div>
								        </header>
								    </div>
								    <!--  컨텐츠  -->
								    <style type="text/css">
								.featured-item{display:none;}
								</style>
								<div class="article-section loca_magazine">
									<h2 class="h" style="text-align: center">경상남도 고성군 고성읍 월평3길. 어림잡아 해발 600m쯤 되는 벽발산이 아버지처럼 든든하게 뒷짐 진 마을. 그 터에 유어예 가족이 산다. 아버지와 작은딸이 단아한 백자를 만들고, 어머니와 큰딸은 그 도자기에 차와 차과자를 지어 담는 곳. 네 식구가 꾸리는 유어예 다실에서 차를 나눠 마셨다.</h2>
								<p style="font-size:0.87em; text-align:center;">edit. 이안나 - photographs. 이주연</p>	
								</div>
								
								<div class="article-img">
									<img src="../resources/img/유어예_01.png" alt="">
								</div>
								
								<div class="article-section">
									<p>서울남부터미널에서 출발한 버스가 족히 4시간을 내달리고, 또 택시로 한참을 달려 좁은 샛길에 다다른 뒤에야 네 식구가 사는 아트막한 집터가 눈에 띈다. 두 기의 장작가마가 있는 도자기 요장 '천광요', 도자 전시장이자 찻집인 '유어예' 그리고 가족이 사는 집이 마당을 사이에 두고 ㄷ자 구조로 옹기종기 모여 있다. 집 어귀에 아버지 박용태, 어머니 김미순, 큰딸 혜림, 작은딸 예슬이 마중을 나와 있었다.</p>	
								</div>
								
								<figure class="article-figure loca_mbsm">
									<img src="../resources/img/유어예_02.png" alt="">
									<figcaption class="article-figure-cation">유어예 입구에 내걸린 현판에는 '하늘의 빛을 담아낸 도자'라고 뜻의 천광요가 깊게 새겨져 있다.</figcaption>
								</figure>
								
								<div class="article-section">
									<p>가족의 하루는 오전 8시 아침을 먹은 뒤 찻상에서 차 예닐곱 잔을 마시면서 느긋하게 시작된다. 객지 손님을 맞느라 가족은 덩달아 아침 찻자리를 한 번 더 갖게 된 셈이다. 어머니가 정성껏 우린 차 한 잔을 받아 든다. 한 모금 머금자 노곤하던 몸이 개운해지는 듯하다.<br>가족 찻자리에 사용하는 다기도 천광요 작품이다. 마지막 한 방울의 찻물까지 깔끔하게 떨어지는 다관을 만들기 위해서 몸통 크기와 주둥이 각도까지 살폈을 만듦새. "다완은 손에 쥐면 무게감이 느껴지면서도 손끝과 바닥에 안기는 듯한 느낌이 들어야 합니다." 차를 사랑하는 도예가가 짓는 다기에는 실용의 미와 다도의 예가 깃들어 있다. 그 진가를 알아보는 사람들은 멀리서도 그의 작품을 보러 이곳을 찾는다. 독학으로 시작한 도예가의 길. 그렇게 되기까지 긴 세월을 견디게 해준 것은 가족, 그리고 차 한잔이다. "내가 술 담배를 안 해요. 차를 마시죠."</p>
								</div>
								
								<figure class="article-figure loca_mbsm">
									<img src="../resources/img/유어예_03.png" alt="">
									<figcaption class="article-figure-cation">어머니와 큰딸이 만든 차와 차과자는 아버지의 백자 그릇에 담겨 손님맞이를 한다. <br>구운 약과, 잣강정 등 유어예식 전통 차과자는 차의 맛을 돋우고, 입안에 잔잔한 단맛을 남기며 얌전히 사라진다.</figcaption>
								</figure>
								
								<div class="article-section">
									<p>오전 11시부터는 가족들의 몸놀림이 부산해진다. 유어예에서 어머니는 차를 내리고, 요리를 전공한 큰딸은 한국 차와 어울리는 차과자를 만든다. 뒤편에 있는 작업실에서는 아버지, 그리고 작은딸이 도예가로서의 시간을 보낸다. 여러 방면에 소질을 보이던 작은딸은 일찌감치 도예를 시작했다. 큰딸과 작은딸이 유어예를 지키는 힘이 뭘까, 궁금해졌다. 큰딸이 말한다. "우리가 유어예를 꾸려가는 이야기의 중심에는 천광요가 있어요. 아버지의 그릇을 사람들에게 알리는 게 첫 번째 목적이었죠. 그러려면 멀리서도 찾아오고 머물고 싶은 곳으로 만들어야겠다 싶었어요." 잠시 망설이다가 말을 이어간다. "작품이 전시된 곳이라 부득이하게 노키즈존(No Kids Zone)으로 운영되고 있어요. 그냥 고성에 있는 유명한 찻집으로 알고 오시는 어린이 동반 가족분들께는 정말 죄송하죠. 그래도 천광요의 작품 전시가 우선인 곳이라 조용하고 차분한 분위기를 이어가려고 해요.</p>
								</div>
								
								<figure class="article-figure loca_mbsm">
									<img src="../resources/img/유어예_04.png" alt="">
									<figcaption class="article-figure-cation">맨드라미꽃 너머로 아버지가 만든 단아한 백자에 큰딸이 소담하게 핀 들꽃을 그려넣은 청화백자가 어렴풋이 보인다</figcaption>
								</figure>
								
								<div class="article-section">
									<p>천광요와 유어예의 이야기를 따라가다 보면 세상의 기준과 잣대가 무력해진다. 스스로가 정한 방향과 규칙에 따라 삶을 지어가는 가족. 유어예 인스타그램(@yuaye_tea)에서 본 한 문장에서 부드러운 결기, 그 뚝심을 다시 한 번느낀다. "예술을 논하고 이상한 법칙을 따지고 때때로 고상 떤다 생각할 수 있겠습니다. 하지만 이 공간에서 영리를 취한다고 해서 그것이, 지불하는 값이, 공간의 모든 것을 주무르는 권리를 갖는 것은 아닙니다." 문장은 확신에 차 있고, 확신은 응원을 부른다. 다시 서울에서 고성으로 가는 날은 다른 기분으로 갈 생각이다. 어머니가 좋아하는 맨드라미꽃을 들고."<br>&nbsp;<br>	* 기사 전문은 &lt;오설록&gt; 매거진 2017년 상반기호에서 확인하실 수 있습니다. &lt;오설록&gt;은 전국 오설록 티하우스와 티샵에서 무료로 만나보실 수 있습니다. </p>	
								</div>
											                    <!--  //컨텐츠 -->
								</div>
		
		
			            </div><!-- modal-body -->
			            
			            <div class="modal-footer">
			               <button type="button" class="btn btn-default modalBtn" data-dismiss="modal">Close</button>
			            </div>
			        </div><!-- /.modal-content -->

			</div><!-- modal fade --> 
			
			<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

			        <div class="modal-content">
			            <div class="modal-header">
	
			             <h4 class="modal-title" id="myModalLabel">오설록 월출산차밭</h4>
			            </div>
			            <div class="modal-body" style="overflow:scroll">
			            
								<div class="article-cont">
								       <div class="featured-item">
								           <img src="../resources/img/월출산차밭_01.jpg" alt="오설록 월출산차밭">
								       </div>
								
								       <div class="sticky-pad">
								           <header class="article-header" data-position="sticky" data-top="120">
								               <div class="article-header-pad">
								                   <span class="add-on">Tea garden <i class="date">2016 winter</i></span>
								                   <h1 class="h1 break-word">오설록 월출산차밭</h1>
								
								                   <div class="article-share">
								                       <a href="#" class="article-share-link x-share-facebook" data-href="https://www.facebook.com/sharer/sharer.php?u=http://www.osulloc.com/kr/ko/guide/magazine/2016-winter/17" data-track-name="페이스북 공유">
								                           <i class="icon-facebook-circle" style=""></i>
								                        <span class="blind">페이스북으로 공유하기</span>
								                    </a>
								                </div>
								            </div>
								        </header>
								    </div>
								    <!--  컨텐츠  -->
											                    <div class="article-section">
									<h2 class="h">비밀의 다원<br>다른 듯 닮은, 닮은 듯 다른 오설록 강진 월출산차밭의 이색 풍경을 사진가가 프레임에 담았다.</h2>
								</div>
								
								<div class="article-section">
									<h2 class="h">강진의 월출산 자락에 펼쳐진 오설록 차의 정원</h2>
									<p>제주 황무지에 오설록이 도순차밭과 서광차밭을 일구기 시작했던 1980년대 초반, 같은 시기에 월출산차밭도 조성되었다. 차 재배에 적합한 자연환경이 오설록 차밭으로 선정된 이유다. 세상에서 제일 먼저 달빛을 받는다는 월출산이 차밭의 든든한 병풍이 되어 찬바람을 막아주고, 온난한 제주와 달리 추운 겨울과 큰 일교차를 지내온 차나무들에 차 본연의 맛과 향이 깃든다고.</p>
								</div>
								
								<div class="article-section">
									<h2 class="h">자연과 과학의 합작, 오설록의 지혜 담은 유기농 경작</h2>
									<p>오설록 월출산차밭은 비교적 완만한 평탄지에 조성되어 있다. 따라서 현대적이고 체계적인 차 밭 관리, 과학적인 농법의 시도가 한결 용이하다. 덕분에 30헥타르에 이르는 드넓은 오설록 월출산차밭에서는 매해 질이 매우 좋고 생산성 높은 고품질의 녹차가 생산되고 있다. 현재 차밭 전체가 유기농으로 재배되며 국내는 물론 유럽연합과 미국의 유기인증을 받았다.</p>
								</div>
								
								<div class="article-img">
									<img src="../resources/img/월출산차밭_02.jpg" alt="">
								</div>
								
								<div class="article-section">
									<h2 class="h">좋은 다원은 좋은 차를 키우고 만드는 법</h2>
									<p>오설록 월출산차밭은 이른 봄 돋아난 첫 새싹을 채엽하면서 본격적인 수확에 들어간다. 이렇게 딴 찻잎은 오설록의 특별한 제다법으로 정성껏 덖고 발효하는 과정을 거쳐 녹차와 다양한 발효 차 제품으로 소비자와 만난다. 그중 월출향은 초의선사의 전통 제다법을 현대적으로 재해석한 약발효차 기법을 활용, 풍부한 향과 조화로운 감칠맛을 즐길 수 있다.</p>
								</div>
								
								<footer class="article-footer">
									<div class="author">
										<span>사진. 조지(강진)</span>
									</div>
								</footer>
											                    <!--  //컨텐츠 -->
								</div>
		
		
			            </div><!-- modal-body -->
			            
			            <div class="modal-footer">
			               <button type="button" class="btn btn-default modalBtn" data-dismiss="modal">Close</button>
			            </div>
			        </div><!-- /.modal-content -->

			</div><!-- modal fade --> 
			
			<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

			        <div class="modal-content">
			            <div class="modal-header">
	
			             <h4 class="modal-title" id="myModalLabel">운중산책</h4>
			            </div>
			            <div class="modal-body" style="overflow:scroll">
			            
								<div class="article-cont">
								       <div class="featured-item">
								           <img src="/upload/kr/ko/_img/guide/magazine_img01.jpg?quality=80" alt="운중산책">
								       </div>
								
								       <div class="sticky-pad">
								           <header class="article-header" data-position="sticky" data-top="120">
								               <div class="article-header-pad">
								                   <span class="add-on">letter from jeju <i class="date">2015 winter</i></span>
								                   <h1 class="h1 break-word">운중산책</h1>
								
								                   <div class="article-share">
								                       <a href="#" class="article-share-link x-share-facebook" data-href="https://www.facebook.com/sharer/sharer.php?u=http://www.osulloc.com/kr/ko/guide/magazine/2015-winter/12" data-track-name="페이스북 공유">
								                           <i class="icon-facebook-circle" style=""></i>
								                        <span class="blind">페이스북으로 공유하기</span>
								                    </a>
								                </div>
								            </div>
								        </header>
								    </div>
								    <!--  컨텐츠  -->
											                    <div class="article-section">
								    <h2 class="h">안개 낀 제주는 맑은 날에 볼 수 없는 이면을 드러낸다.</h2>
								</div>
								<div class="article-img">
								    <img src="../resources/img/운중산책_01.jpg" alt="운중산책">
								</div>
								<div class="article-section">
								    <h2 class="h">안개에 휩싸인 사려니숲길과 물찻오름과 산정호수에서는 누구나 사색가가 된다.</h2>
								    <p>사색이 깊어질수록… 조용히 안이 채워지는 변화가 찾아온다.</p>
								    <p>안개 드리운 다원의 찻잎들에도 차 본연의 색과 맛이 깃드는 신비가 시작된다.</p>
								</div>
								<div class="article-img">
									<img src="../resources/img/운중산책_02.jpg" alt="운중산책">
								</div>
								<div class="article-section">
								    <h2 class="h">오설록의 차광 재배</h2>
								    <p>옥로의 선명한 초록빛과 부드러운 맛을 내기 위해 오설록 다원에서는 일정기간 인위적으로 빛을 차단하고 재배하는 차광 재배를 실시한다. 일조 시간이 길면 찻잎의 색은 점점 진해지고 맛 또한 떫어진다. 반면 빛을 가려 키우면 광합성을 최소화해 찻잎에 여린 잎 본연의 맛과 색이 진하게 깃들고, 아미노산과 데아닌 함량을 높여 영양가 높은 양질의 차를 얻을 수 있다. 또한 제주는 사면을 바다가 에워싸고 있어 잦은 해무가 발생하는데, 이는 자연 차광 효과로 이어져 제주의 녹차를 다른 산지의 차보다 색과 맛이 뛰어나게 만들어준다.</p>
								</div>
								
											                    <!--  //컨텐츠 -->
								</div>
		
		
			            </div><!-- modal-body -->
			            
			            <div class="modal-footer">
			               <button type="button" class="btn btn-default modalBtn" data-dismiss="modal">Close</button>
			            </div>
			        </div><!-- /.modal-content -->

			</div><!-- modal fade --> 
			
			<div class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

			        <div class="modal-content">
			            <div class="modal-header">
	
			             <h4 class="modal-title" id="myModalLabel">일상茶반사</h4>
			            </div>
			            <div class="modal-body" style="overflow:scroll">
			            
										<div class="article-cont">
										       <div class="featured-item">
										           <img src="../resources/img/일상_01.jpg" alt="일상茶반사">
										       </div>
										
										       <div class="sticky-pad">
										           <header class="article-header" data-position="sticky" data-top="120">
										               <div class="article-header-pad">
										                   <span class="add-on">tasTea <i class="date">2015 winter</i></span>
										                   <h1 class="h1 break-word">일상茶반사</h1>
										
										                   <div class="article-share">
										                       <a href="#" class="article-share-link x-share-facebook" data-href="https://www.facebook.com/sharer/sharer.php?u=http://www.osulloc.com/kr/ko/guide/magazine/2015-winter/11" data-track-name="페이스북 공유">
										                           <i class="icon-facebook-circle" style=""></i>
										                        <span class="blind">페이스북으로 공유하기</span>
										                    </a>
										                </div>
										            </div>
										        </header>
										    </div>
										    <!--  컨텐츠  -->
													                    <div class="article-section">
											<h2 class="h">제주는 녹차 생산지로 이상적인 조건을 두루 갖췄다.</h2>
											<p>비옥한 흙, 땅이 걸러주어 맑은 물, 사계절 부는 바람, 바다에서 불어오는 안개, 그리고 온화한 빛까지. 이렇듯 천혜의 자연환경이 짓는 오설록의 건강한 찻잎은 알알이 여무는 제주의 열매와 사계절 피어나는 제주의 꽃을 더하며 다채로운 맛과 향을 뽐내기도 한다. 새로 출시된 ‘제주 프리미엄 티백’ 4종은 그 건강하고 다채로운 오설록 명차의 풍미를 티백 형태로 간편하게, 또 부담 적은 가격으로 즐길 수 있는 제품이다. 제주 프리미엄 티백과 함께 매일매일 특별한 찻자리를 가져보자.</p>
										
											<p>제주 프리미엄 티백은 제주의 대표 원물을 기초로 하여 오설록의 베스트셀링 블렌딩 티를 음용이 편리한 티백 형태로 구현한 제품이다. 각각 ‘제주 순수녹차’, ‘제주 삼다영 귤 티’, ‘제주 유채 &amp; 꿀 티’, ‘제주 동백꽃 티’ 등 4종으로 만날 수 있다. 이 제품에 프리미엄이라는 이름이 아깝지 않은 이유는 차에 담은 유채꽃, 동백꽃, 영귤 등 제주만의 특별한 원료와 그 원료를 키워낸 제주 자연의 스토리가 더해졌기 때문일 것이다.</p>
										</div>
										
										<div class="article-section">
											<h2 class="h">제주 자연의 흥미로운 이야기를 차에 담다</h2>
											<p>제주 녹차를 더욱 특별하게 만드는 다섯 가지 자연환경은 흙, 물 , 바람, 안개, 빛이다. 남한에서 가장 높은 한라산이 중앙에 위치한 섬, 제주는 화산 폭발로 만들어졌기 때문에 토양인 화산회토가 필터처럼 오염물질을 강하게 흡착한다. 이 사이를 통과하는 물은 자연히 깨끗한 화산 암반수다. 낮에 부는 제주의 바닷바람과 밤에 부는 산바람까지 보태지면 녹차의 맛과 향은 더 짙어진다. 아열대성 기후인 제주의 따스한 빛과 바다로 둘러싸인 섬이기 때문에 생기는 해무도 찻잎의 빛깔과 영양을 더 뛰어나게 만들어준다. 청정 녹차 산지로손꼽히는 제주에서도 오설록 직영다원은 차나무를 유기농으로 키워 찻잎을 바로 따서 먹을 수 있을 정도로 친환경 녹차만을 생산한다. ‘제주 순수녹차’는 이러한 오설록 녹차의 정수를 맛볼 수 있는 차다. 오설록 직영다원에서 정성껏 키운 차나무의 어린 찻잎만을 살짝 찌고 덖어 오리지널 순수녹차의 부드럽고 깔끔한 맛을 즐길 수 있다.</p>
										
											<figure class="article-figure">
												<img src="../resources/img/일상_02.png" alt="">
												<figcaption class="article-figure-cation">
													<strong>제주 프리미엄 티백 4종</strong>
													제주 산지의 차와 꽃, 열매를 담은 블렌딩티로 취향 따라, 개성껏 골라 마시기 좋다. <br>180ml(종이컵 1컵)에 70~80℃ 온도로 2분간 우려내는 음용 조건을 추천하지만, <br>맨숭맨숭하게 마시는 차가 좋다면 물을 더 타도 차의 즐거움이 반감되지 않는다.
												</figcaption>
											</figure>
										</div>
										
										<div class="article-img">
											<img src="../resources/img/일상_03.jpg" alt="">
										</div>
										
										<div class="article-section">
											<h2 class="h">유채꽃, 동백꽃, 영귤‥・ 제주 자연을 맛과 향으로 간직하다</h2>
											<p>‘제주의 봄’하면 노란빛이 가장 먼저 떠오른다. ‘명랑과 풍요로움’이라는 꽃말을 지닌 유채는 제주에 봄이 왔음을 알리는 전령사다. 푸른 제주 바다와 검은 빛 돌담, 그리고 흐드러지게 핀 노란 유채꽃이 어우러져 만들어내는 제주의 봄 풍경은 우리의 몸과 마음에 생동하는 봄 기운을 가득 채워준다. <em>‘제주 유채 &amp; 꿀 티’</em>는 싱그러운 녹차를 베이스로 제주의 토양에서 자란 유채꽃과 달달한 꿀을 더한 블렌딩티다. 티백을 찻물에 우려내자 코끝에 금세 봄이 찾아온다. 이어 차 한 모금을 마시면 유채의 싱그러움뿐 아니라 달큰하고 향긋한 맛과 향이 미각을 일깨운다. </p>
											<p>한라산에 흰 눈이 내릴 무렵, 매서운 겨울 해풍을 딛고 동백이 핀다. 제주의 동백은 유난히 향이 짙다. 나뭇가지에서 한 번 피어나고 송이째 진 뒤 눈밭에서 한 번 더 꽃을 피우며 동백은 그 우아한 향을 이른 봄까지 곶자왈 가득 퍼트린다. 특별한 생애 덕분에 동백은 정열적인 사랑의 상징으로도 자주 이야기된다. <em>‘제주 동백꽃 티’</em>에는 열대 꽃보다 더 아찔한 빛깔과 향기를 뽐내는 동백꽃의 향이 오롯하게 담겨 있다. 꽃잎과 꽃술이 시들지 않은 채, 차가운 눈밭에 송이째로 떨어져 일주일을 견뎌낼 만큼 강한 생명력을 자랑하는 동백의 향과 한라봉의 다디단 맛이 더해져 마음까지 봄기운이 풍긴다. </p>
											<p>영귤은 신선이 먹는 귀한 귤이라는 뜻에서 붙여진 이름이다. 우리나라에서는 청정 제주의 따스한 햇살을 받으며 자라고 있다. 여느 과일들과 다르게 푸른색인 미숙과일 때 가장 신선하며, 자연식초라 불릴 만큼 상큼한 맛과 싱그러운 향 덕분에 고급 식재료로 사용되는 귀한 열매다. ‘제주 삼다영귤 티’는 그윽한 풍미를 지닌 오설록만의 발효숙성차 삼다연에 제주의 햇살을 머금고 자란 싱그러운 영귤을 블렌딩해 상큼한 맛이 매력적이다. 달콤하고 향긋하게 스며든 향이 기분까지 밝게한다.</p>
										</div>
										
										<footer class="article-footer">
											<div class="author">
												<span>글. 이안나</span> — <span>사진 및 스타일링. 박세훈</span>
											</div>
										</footer>
													                    <!--  //컨텐츠 -->
										</div>
		
			            </div><!-- modal-body -->
			            
			            <div class="modal-footer">
			               <button type="button" class="btn btn-default modalBtn" data-dismiss="modal">Close</button>
			            </div>
			        </div><!-- /.modal-content -->

			</div><!-- modal fade --> 
            
            <div class="modal fade" id="myModal7" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

			        <div class="modal-content">
			            <div class="modal-header">
	
			             <h4 class="modal-title" id="myModalLabel">장인</h4>
			            </div>
			            <div class="modal-body" style="overflow:scroll">
			            
								<div class="article-cont">
								       <div class="featured-item">
								           <img src="/upload/kr/ko/adminImage/UQ/XH/20170116170554116WR.jpg?quality=80" alt="장인">
								       </div>
								
								       <div class="sticky-pad">
								           <header class="article-header" data-position="sticky" data-top="120">
								               <div class="article-header-pad">
								                   <span class="add-on">People <i class="date">2016 winter</i></span>
								                   <h1 class="h1 break-word">장인</h1>
								
								                   <div class="article-share">
								                       <a href="#" class="article-share-link x-share-facebook" data-href="https://www.facebook.com/sharer/sharer.php?u=http://www.osulloc.com/kr/ko/guide/magazine/2016-winter/16" data-track-name="페이스북 공유">
								                           <i class="icon-facebook-circle" style=""></i>
								                        <span class="blind">페이스북으로 공유하기</span>
								                    </a>
								                </div>
								            </div>
								        </header>
								    </div>
								    <!--  컨텐츠  -->
											                    <div class="article-section">
									<h2 class="h">각자 신념과 열정으로 묵묵히 걸어온 장인의 외길.<br>
									그 길과 이 길이 우연인 듯 필연인 듯 교차한다.<br>
									중요무형문화재 78호 홍정실 입사장과 오설록 억수진이 그렇게 만났다.</h2>
								</div>
								
								<br>
								
								<div class="article-section">
									<p>입사, 우리말로는 은실박이. 놋이나 쇠그릇 등 금속 표면에 금실, 은실을 땜 없이 끼워 넣어 장식하는 전통 공예기법이다. </p>
									<p>전문가들에 따르면, 우리나라 입사공예의 역사는 아주 먼 과거로 거슬러 올라간다. B.C 1~2세기경의 낙랑 출토유물에서 이미 고도로 발달한 입사기술을 확인할 수 있으며 신라, 고려, 조선을 거치면서 그 기법과 예술성은 거듭 발전했다. 가장 화려한 절정기로 평가받는 고려 시대 은입사 기법이 후에 상감청자기술과 나전상감칠기술로 발전했다는 사실은 입사공예의 가치를 다시금 일깨운다. 그러나 일제강점기, 6·25전쟁 등을 거치면서 전통은 단절의 위기를 맞는다. 이왕직미술품제작소에서 활동했던 조선 시대의 마지막 장인인 故 이학응 옹으로부터 그의 마지막 수제자 홍정실 선생으로 이어진 인연의 끈이 없었다면, 이 아름다운 기예는 역사속으로  사라졌을지 모른다. 1947년 평양 태생의 홍정실 선생은 서울여자대학교에서 공예미술을 배우고, 서울대학교 대학원에서 미술교육을 전공한 뒤 본격적으로 전통 금속공예에 관심을 가지기 시작했다. 그중 입사공예에 눈을 크게 뜬 계기는 도서관에서 우연히 봤던 한 권의 책에서 비롯됐다.</p>
									<p>故 예용해 선생의 저서 &lt;인간문화재&gt; 속 이 문장. “천만다행으로 은입사를 하는 분이 이 세상 어디에 묻혀 살아 있다면, 세계에 자랑할 고유한 민속공예의 한 부문을 되살릴 거룩한 존재가 될 것이다.” 회고하기를, 무언가가 뇌리 와 가슴에 섬광처럼 꽂히는 기분, ‘내가 할 일이구나’ 하는 운명 같은 깨달음이었다고 한다. 직접 입사 기능보유자를 찾아 전국을 6년 동안 헤맨 뒤에야 이학응 옹을 만날 수 있었다. 당시 78세의 고령이었던 이옹은 전통의 맥을 잇겠다고 찾아온 30대 초반의 홍 선생을 기특해하며 손녀처럼 아꼈다. 예순 이후로 입사 작업에서 손을 뗀 상태지만, 1988년 별세하시기 전까지 10년 동안 정릉 자택에서 전통 입사기법을 하나하나 전수했다. 홍 선생은 스승께 원히 시들지 않는 카네이션을 가슴에 달아드린다. 전통 입사에 관련된 자료와 스승의 기록을 문화재관리국에 제출, 스승이 초대 입사장 기능보유자로 지정되는 데 애썼던 것이다. 스승이 떠난 후로는 그저 정해진 운명, 천직이라 여기며 묵묵히 입사공예의 길을 걸어왔다.</p>
									<p>국내외에서 개최한 15번의 개인전과 70여 번의 그룹전, 13번의 수상경력 같은 숫자가 그 길을 대변할 수 있을까. 세계적인 미술관 국대박물관, 대만 국립역사박물관, 오스트리아 비엔날레 민속박물관 등에 작품이 소장된 사실도 선생이 그 길에서 느낀 고독과 기쁨, 낙담 과 환희를 모두 설명하진 못할 것이다. 올해 선생은 일흔을 맞았다. 이 학응 옹이 그리하셨던 것처럼 현재는 후학 양성에 힘쓰고 있다. 하지만 여전히 손에서 은실과 마치를 놓지 않는다. 촬을 위해 은실박이를 시연하면서도 흉내만 내는 게 더 어렵다며 몰입해 벼린 솜씨를 선보인다. 섬세한 공정을 수도 없이 거듭하다 보니 시력이 나빠지고 신경통을 달고 살지만, 안경 너머로 형형히 빛나는 눈과 꼿꼿하게도 곧은 기품만은 변하지 않았다.</p>
								</div>
								
								<div class="article-img">
									<img src="../resources/img/장인_01.jpg" alt="">
								</div>
								
								<div class="article-section">
									<h2 class="h">입사 재료와 도구</h2>
									<p>은실이나 금실이 주재료다. 무늬에 맞는 색, 굵기를 선택해 준비한다. 섬세한 작업을 위해서는 다양한 크기의 송곳정, 망치, 마치, 뿔, 광쇠 등이 필요로 한다.</p>
								</div>
								
								<div class="article-img">
									<img src="../resources/img/장인_02.jpg" alt="">
								</div>
								
								<div class="article-section">
									<h2 class="h">은실박이 과정</h2>
									<p>송곳정과 마치를 이용해 기면에 무늬를 옮겨 찍은 다음, 찍은 무늬를 따라 은실을 박는다. 광쇠로 은선을 문지르면 광이 나게 되는데, 표면과 은선이 더 단단하게 착되는 효과도 있다.</p>
								</div>
								
								<div class="article-img">
									<img src="../resources/img/장인_03.jpg" alt="">
								</div>
								
								<div class="article-section">
									<p>한편, 홍정실 선생의 입사공예 인생에서 빼놓을 수 없는 대목이 있다. 바로 선생이 전통 입사공예의 계승 작업에 몰두함과 동시에, 동시대와 소통하는 창조적 입사 작품을 꾸준히 모색하고 전개해왔던 점이다. 미국 G.I.A와 캘리포니아주립대에서 보석과 전문장신구 디자인을 배우고, 중국과 스페인, 인도 등 해외 전통공방을 다니며 다양한 금속 공예 기법을 연구했던 행보도 입사의 전통 기법을 복원하고 유지하는 데 그치지 않고, 현대적으로 발전시키겠다는 의지에서 비롯한다. 그런 선생에게 이번 오설록과의 협업은 아주 낯선 시도가 아닐 것이다.</p>
									<p>오설록의 프러포즈로 성사된 이 프로젝트는 올해로 출시 30주 년을 맞는 오설록 억수진 제품에게 홍 선생이 은실로 한 땀 한 땀 수놓은 새 옷을 입히는 것. 억수진을 키우고 짓는 제주 자연의 풍경을 입사기법으로 표현한 패키지는 자체로 한 폭 그림이다. 남쪽 먼바다에서 불어오는 바람, 그 바람에 너울대는 싱그러운 녹찻잎, 홀연 섬의 실루엣으로 솟은 한라산, 끝없이 펼쳐지는 차밭…. 검은 색 바탕에 새긴 이 은빛 금빛 풍경은 한 모금 빛을 머금고 나서야 비로소 빛나는 음전한 멋이 있다. 말하자면 억수진은 아주 특별한 생일선물을 받은 셈인데, 과연 축하할 만한 경사가 아닐 수 없다. 1986년 첫 출시 이후 지금까지 꾸준히 소비자와 만나고 있는 제품은 매우 드물고, 그래서 더 귀한 예니까. 억수진은 현존하는 오설록 제품 중 가장 오랜 역사를 자랑하는 제품일 뿐 아니라 브랜드의 40여 년 역사 동안 꾸준히 사랑받아온 대표 스테디셀러다. </p>
									<p>아모레퍼시픽 창업주이자 오설록 브랜드의 초석을 세운 故 서성환 회장이 특별히 애착을 가진 제품으로도 알려져 있다. 브랜드 역사를 되짚어 보면 억수진에 쏟았던 그의 애정에 고개가 절로 끄덕여진다. 1979년, 서성환 회장은 버려진 땅이나 다름없던 제주 돌밭을 개간하기 시작해 1980년에 오설록의 첫 녹차 제품인 백수, 천수, 만수를 출시한다. 1984년에는 오설록 3대 제주차밭 중 가장 광대한 규모를 자랑하는 서광 차밭을 조성하기에 이른다. 그리고 2년 후에 선보인 차가 바로 억수진이다. 따스한 제주 햇살이 내리쬐는 봄, 땀과 열정으로 손수 일궈낸 제주 차밭에서 싹을 틔운 차의 새순을 하나하나 정성껏 채엽하고, 또 고르고 고른 찻잎만으로 지은 명차. 억수진은 서성환 회장의 아름다운 집념을 계승하며 현재까지 그 뜻을 잇고 있는 차인 것이다. 그러고 보면 억수진에 담긴 서성환 회장의 집념은, 홍정실 선생의 그것과 닮은 점이 있다. 천 년의 가치를 가졌지만 어느 순간 자취를 감춰버린 우리나라의 차 문화를 복원·계승하고 또 정착시키려 했던 열정 어린 신념과, 명맥이 끊겼던 전통 입사공예를 끈질기게 되살려 당대로 이으려 했던 신념 어린 열정. 어쩌면 새롭게 태어난 억수진은 시공간을 초월해 뜻이 통하는 두 장인의 만남으로부터 완성된 것이 아닐까. 그 인연이 가느다란 은실로 이어진 것은 아닐까.</p>
								</div>
								
								<footer class="article-footer">
									<div class="author">
										<span>글. 이상현 / 사진. Studio Salt</span>
									</div>
								</footer>
											                    <!--  //컨텐츠 -->
								</div>
		
		
			            </div><!-- modal-body -->
			            
			            <div class="modal-footer">
			               <button type="button" class="btn btn-default modalBtn" data-dismiss="modal">Close</button>
			            </div>
			        </div><!-- /.modal-content -->

			</div><!-- modal fade --> 
			
			<div class="modal fade" id="myModal8" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

			        <div class="modal-content">
			            <div class="modal-header">
	
			             <h4 class="modal-title" id="myModalLabel">Tea & Tea Food</h4>
			            </div>
			            <div class="modal-body" style="overflow:scroll">
			            
									<div class="article-cont">
									       <div class="featured-item">
									           <img src="../resources/img/tea&food_01.jpg" alt="Tea &amp; Tea Food">
									       </div>
									
									       <div class="sticky-pad">
									           <header class="article-header" data-position="sticky" data-top="120">
									               <div class="article-header-pad">
									                   <span class="add-on">Choice <i class="date">2016 winter</i></span>
									                   <h1 class="h1 break-word">Tea &amp; Tea Food</h1>
									
									                   <div class="article-share">
									                       <a href="#" class="article-share-link x-share-facebook" data-href="https://www.facebook.com/sharer/sharer.php?u=http://www.osulloc.com/kr/ko/guide/magazine/2016-winter/14" data-track-name="페이스북 공유">
									                           <i class="icon-facebook-circle" style=""></i>
									                        <span class="blind">페이스북으로 공유하기</span>
									                    </a>
									                </div>
									            </div>
									        </header>
									    </div>
									    <!--  컨텐츠  -->
												                    <div class="article-section">
										<h2 class="h">연말 티파티를 위한 참 쉽고 간단한 티 &amp; 티푸드 아이디어</h2>
									</div>
									
									<div class="article-section">
										<h2 class="h">#시나몬과_생크림을_더한  #삼다연_오리지널_밀크티  #달콤쌉싸름</h2>
										<p>구수한 맛과 향의 오설록 삼다연 오리지널 밀크티는 달달한 생크림과 알싸한 시나몬을 더하면 더욱 화려한 풍미로 즐길 수 있다. 만드는 법도 아주 간단하다. 생크림에 설탕을 기호에 맞게 넣고 휘퍼로 거품을 내 삼다연 오리지널 크티에 살포시 올려준다. 그 다음, 시나몬 가루를 솔솔 뿌리고 시나몬 스틱을 꽂아 장식해주면 완성이다. 기호에 따라 오설록 프리미엄 가루녹차나 녹차 초콜릿 가루를 뿌려도 색다른 풍미를 즐길 수 있다.</p>
										
									</div>
									
									<div class="article-img">
										<img src="../resources/img/tea&food_02.jpg" alt="">
									</div>
									
									<div class="article-section">
										<h2 class="h">#녹진한_단맛  #그린티_치즈_티라미스  #머랭_과자  #녹차_초콜릿_소스</h2>
										<p>오설록 그린티 치즈 티라미스에 머랭 과자와 녹차 초콜릿 소스를 곁들이면, 티라미스 특유의 녹진한 단맛을 한층 더 끌어올려준다. 이때 마시는 발효차는 더 구수하고 담백하다.</p>
									</div>
									
									<div class="article-section">
										<h2 class="h">머랭 과자</h2>
										<p>재료 - 달걀 흰자 2개, 설탕 100g, 레몬주스 1큰술<br>
										만드는 법 - 1. 달걀 흰자에 설탕을 넣고 거품기로 단단해질 때까지 쳐서 올려준다.<br>
										2. 마지막에 레몬주스를 첨가해준다.</p>
									</div>
									
									<div class="article-section">
										<h2 class="h">녹차 초콜릿 소스</h2>
										<p>재료 - 오설록 제주섬 녹차화이트트러플 100g, 생크림 100g<br>
										만드는 법 - 1. 생크림을 데워준 후 오설록 제주섬 녹차화이트트러플에 붓는다.<br>
										2. 살살 저어서 초콜릿을 완전히 녹여준다.</p>
									</div>
									
									<div class="article-img">
										<img src="../resources/img/tea&food_03.jpg" alt="">
									</div>
									
									<div class="article-section">
										<h2 class="h">#다채로운_식감  #호지차_파운드케이크  #제주섬_녹차초콜릿바  #아이스크림</h2>
										<p>단순한 단맛이 아니라 다채로운 식감을 즐길 수 있는 티푸드를 원한다면 주목하자. 호지차 파운드케이크의 담백함, 견과류의 바삭함, 스트로젤의 보슬보슬한 고소함, 아이스크림의 부드러운 촉촉함이 어울러진다. 만드는 법도 어렵지 않다. 작은 큐브 모양으로 자른 오설록 호지차 파운드케이크, 필러로 얇게 민 오설록 제주섬 녹차초콜릿바, 다진 호두 등을 접시에 보기 좋게 올린 다음, 호지차 아이스크림와 바닐라 아이스크림을 한 스쿱 곁들여 고소하고 담백한 케이크에 촉촉함을 더해준다.</p>
									</div>
									
									<div class="article-img">
										<img src="../resources/img/tea&food_04.jpg" alt="">
									</div>
									
									<div class="article-section">
										<h2 class="h">#싱그러운_녹차_향_가득  #그린티_롤케이크  #녹차_밀크_스프레드</h2>
										<p>진한 녹차의 싱그러움과 풍부한 단맛이 조화를 이루는 티푸드다. 오설록 그린티 롤케이크, 녹차 밀크 스프레드, 녹차 아이스크림이 풍성한 녹차 향과 부드러운 단맛을 전한다면, 레드키위와 스트로젤이 달콤새콤 고소함으로 그 풍미를 더욱 높여준다. 특히 키위 중에서도 신맛이 적고 당도가 높은 레드키위와 녹차 티푸드의 어울림이 환상적이다.</p>
									</div>
									
									<div class="article-section">
										<h2 class="h">스트로젤</h2>
										<p>재료 - 박력분 50g, 설탕 50g, 버터 50g, 아몬드 파우더 50g<br>
										만드는 법 - 1. 핸드블렌더로 모든 재료를 갈아 준다.<br>
										2. 145도로 예열된 오븐에 넣고 8분간 구워준다.
									</p>
									</div>
									
									<footer class="article-footer">
										<div class="author">
											<span>요리. 임호성 / 사진·스타일링. 박세훈</span>
										</div>
									</footer>
												                    <!--  //컨텐츠 -->
									</div>
		
		
			            </div><!-- modal-body -->
			            
			            <div class="modal-footer">
			               <button type="button" class="btn btn-default modalBtn" data-dismiss="modal">Close</button>
			            </div>
			        </div><!-- /.modal-content -->

			</div><!-- modal fade --> 
			
			<div class="modal fade" id="myModal9" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

			        <div class="modal-content">
			            <div class="modal-header">
	
			             <h4 class="modal-title" id="myModalLabel">좋은 친구들</h4>
			            </div>
			            <div class="modal-body" style="overflow:scroll">
			            
									<div class="article-cont">
									       <div class="featured-item">
									           <img src="../resources/img/좋은 친구들_01.jpg" alt="좋은 친구들">
									       </div>
									
									       <div class="sticky-pad">
									           <header class="article-header" data-position="sticky" data-top="120">
									               <div class="article-header-pad">
									                   <span class="add-on">T-room <i class="date">2015 winter</i></span>
									                   <h1 class="h1 break-word">좋은 친구들</h1>
									
									                   <div class="article-share">
									                       <a href="#" class="article-share-link x-share-facebook" data-href="https://www.facebook.com/sharer/sharer.php?u=http://www.osulloc.com/kr/ko/guide/magazine/2015-winter/8" data-track-name="페이스북 공유">
									                           <i class="icon-facebook-circle" style=""></i>
									                        <span class="blind">페이스북으로 공유하기</span>
									                    </a>
									                </div>
									            </div>
									        </header>
									    </div>
									    <!--  컨텐츠  -->
												                    <div class="article-section">
										<h2 class="h">동심과 익살 사이 | 박요셉</h2>
										<p>지금 오설록 티하우스에 방문한 이들이라면 눈을 씻고 공간 구석구석을 살펴보길 권한다. 티테이블과 의자 같은 가구는 물론이고 조명과 소품, 진열장에 놓인 제품 패키지와 시향용 샘플들, 티와 티푸드의 담음새, 티소믈리에의 유니폼과 그들이 차를 우리고 서브하는 움직임까지… 티하우스 고객을 맞기 위해 정성스레 매만진 오설록의 야무진 손매가 새삼스러울 것이다. 그리고 이제 우리가 만날 3팀의 크리에이터들은 이 결과물을 완성시킨 숨은 조력자이자 오설록과 마음이 통하는 친구들이다. </p>
										<p>무엇보다 티하우스 방문객의 눈을 사로잡는 바는 아름다운 그림이 그려진 제품 패키지다. 아기자기한 드로잉으로 오설록 차의 흥미진진한 스토리를 담아낸 일러스트레이션은 단번에 소장욕을 부른다. 오설록은 그간 국내의 참신한 일러스트레이터들과의 협업을 통해 이 ‘갖고 싶은 그림’을 제품에 담아낼 수 있었고, 사진 속 콧수염이 근사한 남자도 그중 한명이다. </p>
									</div>
									
									<div class="article-img">
										<img src="../resources/img/좋은 친구들_02.jpg" alt="">
									</div>
									
									<div class="article-section">
										<p>박요셉은 늦깎이 일러스트레이터다. 홍익대학교에서 시각 디자인을 전공한 뒤 포토그래퍼로 4년을 일하다가 2011년 스물 아홉 나이에 전업작가 생활을 시작했다. 특별한 계기는 없었다. 하고 싶은 이야기를 최대한 효과적이고 재미있게 표현할 수 있는 매체가 일러스트였을 뿐이다. 이후 잡지, 단행본 등 출판물과 기업의 커머셜 작업 및 콜라보레이션을 통해 꾸준히 작업물을 선보여왔다. 자타공인, 그의 그림에서 가장 빛나는 면모는 ‘위트’다. 오설록의 시크릿 티 스토리, 밸런타인데이 러브 컬렉션, 크리스마스 에디션 등에 삽입된 일러스트레이션에서도 동심에 기댄 그의 분방한 상상력이 때론 서정적으로 때론 익살스럽게 표현된 점을 확인할 수 있다.</p>
										<p>제주숲과 녹차밭, 세계 각지의 여행지들 그리고 판타지 공간까지 넘나드는 그의 그림 세상에서는 오설록 요정들이 찻잔에 차와 영귤을 넣어 사랑의 묘약을 만드는 등 동화 같은 이야기, 흥미진진한 탐험기가 펼쳐진다. 박요셉은 클라이언트 일과는 별개로 개인작업도 착실히 이어가고 있다. 정직하게도 매일 한 점씩 그려온 작업들을 모아 올 해 연말에 전시회를 개최할 계획이다. 그 그림을 먼저 보고싶다면 홈페이지를 방문해보자. <a href="http://www.hewasme.com" target="_blank">www.hewasme.com</a></p>
									</div>
									
									<div class="article-img">
										<img src="../resources/img/좋은 친구들_03.jpg" alt="">
									</div>
									
									<div class="article-section">
										<h2 class="h">방법을 디자인하다 | 디자인 메소즈 문석진, 이상필, 김기현</h2>
										<p>디자인 메소즈 Design Methods 는 세계 최경량 의자 ‘1.3체어’로 국내외 디자인계의 주목을 한몸에 받았다. 무게가 1.28kg에 불과한 이 의자의 재료는 발사나무다. 수수깡처럼 가볍지만 무르고 약해서 서핑보드나 피아노 부품 등으로 사용되었던 것을 압축성형으로 강도를 높인 끝에 의자 소재로 사용할 수 있었다. 영국 런던 디자인 뮤지엄의 올해의 디자인, 미국산업디자인협회 IDEA 등 굵직한 디자인 어워드에서 연이어 트로피를 거머쥔 이유는 결국 혁신적인 소재와 기술의 발견, 그리고 이를 실현시켜낸 강직한 집념에 있을 것이다.</p>
										<p>‘방법을 디자인한다 We design methods’는 스튜디오 모토에 걸맞게 디자인 메소즈는 조형적 아름다움을 탐하기 앞서 개념과 본질에 대한 물음으로부터 실마리를 푼다. 이를테면 서울의 한 어학원에서 의자를 만들어 달라는 주문에 학생들의 자세 습관, 학업 환경, 수업 시스템 등을 조사하는 것도 모자라 체형별 수강생 엉덩이를 석고본으로 떠 실험했을 정도다. 이 의자는 2013 코리아디자인어워드에서 리빙디자인부분 대상을 받았다. 따라서 오설록 티하우스 체어 컬렉션 역시 만듦새보다는 탄탄한 프로세스를 먼저 주목해야 한다.</p>
									</div>
									
									<div class="article-img">
										<img src="../resources/img/좋은 친구들_04.jpg" alt="">
									</div>
									
									<div class="article-section">
										<p>디자인 메소즈는 한국의 차 역사와 문화에 대한 심도 있는 공부는 물론이고, 오설록의 브랜드 아이덴티티와 핵심 가치를 반영하기 위해 제주도를 답사하며 관련 자료를 수집하는데 정성과 시간을 쏟았다. 특히 간결하고 소박하기에 더없이 기능적인 제주의 공예는 이들에게 많은 영감을 불러일으킨다. 실용성이 빚어내는 단순함의 미덕은 오설록 체어 컬렉션에서도 여실히 빛난다. </p>
										<p>나무 자체가 가진 무늬와 결을 최대한 살리는 제주 목공예의 특징을 반영해 최소한의 기본 생산 공정만으로 완성되는 목재 등받이뿐 아니라 조립 및 해체가 간편한 구조, 오염시 세탁이나 교체가 용이한 좌판 등도 그 영향 아래 있다. 푹신푹신한 쿠션 대신 낭창낭창한 끈을 엮어 만든 웨빙 Webbing 좌판에는 차 한 잔에 몸과 마음을 살피는 다도의 정신을 담았다고 한다. 과연 옛 다인들도 기꺼이 앉을 만한 의자다. <a href="http://www.designmethods.kr" target="_blank">www.designmethods.kr</a></p>
									</div>
									
									<div class="article-img">
										<img src="../resources/img/좋은 친구들_05.jpg" alt="">
									</div>
									
									<div class="article-section">
										<h2 class="h">가까이, 더 가까이 | 김아린</h2>
										<p>비 마이 게스트 Be My Guest 의 김아린 대표는 명실공히 국내 F&amp;B 분야의 스타로 손꼽힌다. 2004년, 개념조차 생소했던 브런치 카페를 처음 한국에 상륙시킨 이래 카페 무이무이, 테이크 어반, SSG 푸드마켓 등 트렌드의 최전방에 있는 수많은 식공간들이 그녀의 손길을 거쳐 탄생했다. 다수의 핫 플레이스를 만들어냈다는 높은 승률보다 새로운 문화를 제안했다는 점에서 김아린의 존재감은 단연 돌올하다.</p>
										<p>이화여대에서 조형예술학을 전공한 뒤 파리에서 예비 셰프로 공부하다가 외식 경영으로 진로를 바꾼 독특한 이력, 불문학자 아버지에게 배운 인문학적 소양과 미술가 어머니로부터 물려받은 예술적 재능 등이 식문화 트렌드를 읽어내는 탁월한 안목의 토대일 것이다. 레스토랑 컨설턴트로서 그녀가 맡는 일은 무척이나 많다. 컨셉부터 인테리어 제안, 메뉴 선정, 주방 세팅, 유니폼, 식기, 하다못해 냅킨 하나까지 식공간의 전체와 세부를 일일이 조율해야 한다. 결국 고객이 공간에서 맞닥뜨리는 거의 모든 곳에 그녀의 직관과 감성이 발휘될 수밖에 없다. </p>
									</div>
									
									<div class="article-img">
										<img src="../resources/img/좋은 친구들_06.jpg" alt="">
									</div>
									
									<div class="article-section">
										<p>2012년, 오설록과의 첫 프로젝트였던 티하우스 압구정점에서는 다양한 티와 티푸드의 메뉴 개발뿐 아니라 근본적으로 고객이 차를 마시는 방법과 환경에 대해 고민했다. 가정이 아닌, 티하우스에서 차를 음용하는 가치와 즐거움을 전하기 위해 차를 우리고 내고 마시는 방식을 메뉴얼화했다. 사실 압구정점은 오설록 티하우스가 한국의 전통 차 문화에 젊은 감성을 본격적으로 더하기 시작한 곳이다.</p>
										<p>어렵고 엄숙하게만 느껴지던 차를 살갑고 가깝게 느끼게 하는 것, 그 접점을 찾아주는 것이 그녀의 숙제였던 셈이다. 반면 이듬해 개관한 제주 티스톤에서는 우리 차 문화의 정수를 오롯이 경험 할 수 있도록 배려했다. 특히 티스톤 상층에서 운영되는 티 클래스의 아름다운 신 Scene 을 만들기 위해 다기부터 한 줄 가이드까지 공을 들였다고 한다. 그녀에게 전통이란 과거에서 시작해 현재의 삶에 이어지고 있는 것이다. 때밀이 수건조차 전통이라면 전통이라는 그녀의 유연한 생각이 차와 우리의 친근한 만남을 주선했던 게 아니었을까. <a href="http://www.bemyguest.co.kr" target="_blank">www.bemyguest.co.kr</a></p>
									</div>
									
									<footer class="article-footer">
										<div class="author">
											<span>글. 이상현</span> — <span>사진. 안성철</span>
										</div>
									</footer>
									
												                    <!--  //컨텐츠 -->
									</div>
		
		
			            </div><!-- modal-body -->
			            
			            <div class="modal-footer">
			               <button type="button" class="btn btn-default modalBtn" data-dismiss="modal">Close</button>
			            </div>
			        </div><!-- /.modal-content -->

			</div><!-- modal fade --> 

            
            
            
            <div class="pager">
                <p class="on">1</p>
                <p>2</p>
                <p>3</p>
            </div>
            <!--.pager-->


        </div><!--.container-->

        <%@ include file="../Header&Footer/footer.jsp" %>
        
        <script src="../resources/js/subpage.js"></script>

 	
    </div><!--#warp-->
    


</body>
</html>