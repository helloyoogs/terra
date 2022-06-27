<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>육희영포트폴리오</title>
	<!--파비콘설정-->
	<link rel="apple-touch-icon" sizes="152x152" href="favicon/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
	<link rel="manifest" href="favicon/site.webmanifest">
	<link rel="mask-icon" href="favicon/safari-pinned-tab.svg" color="#5bbad5">
	<meta name="msapplication-TileColor" content="#da532c">
	<meta name="theme-color" content="#ffffff">
	<!--파비콘설정끝-->
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/header.css">
	<link rel="stylesheet" href="css/sub0-backend.css">
	<script src="js/jquery-3.5.0.min.js"></script>
	<script src="js/header.js"></script>

	<!-- ppt영역 slick 시작 -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css" rel="stylesheet" />
	<link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.css" rel="stylesheet" />
	<!-- ppt영역 slick 끝 -->

	<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
	<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<style>
		/* 임시 삽입: 확인용 */
.slick-sample img{
	display: inline-block;
}
.slick-next {
        right: 15%;
 width: 30px;
height: 30px;
    border-radius: 100%;
}
.slick-prev {
       left: 15%;
 width: 30px;
height: 30px;
    border-radius: 100%;
z-index: 1;
}
.slick-left {
  left: 21%;
}
.slick-prev:before {
    content: '←';
    background: #3d2221;
    border-radius: 50%;
}
.slick-next:before {
    content: '→';
    background: #3d2221;
    border-radius: 50%;
}
	</style>

	<script>
		$(document).ready(function() {
			$('.slick_ppt1').slick({
			prevArrow : "<button type='button' class='slick-prev'>Previous</button>",
			nextArrow : "<button type='button' class='slick-next'>Next</button>"
			});
			$('.slick_ppt2').slick({
			prevArrow : "<button type='button' class='slick-prev'>Previous</button>",
			nextArrow : "<button type='button' class='slick-next'>Next</button>"
			});
			$('.slick_ppt3').slick({
			prevArrow : "<button type='button' class='slick-prev'>Previous</button>",
			nextArrow : "<button type='button' class='slick-next'>Next</button>"
			});
		});
	</script>

</head>

<body>
	<header>
		<div class="logo">
			<a href="index.jsp"><img src="img/logo.png" alt="170x78"></a>
		</div>
		<h1><span>*</span>BackEnd</h1>
		<!--            햄버거버튼 겸  x버튼-->
		<div class="bar-btn">
			<div class="bar1"></div>
			<div class="bar2"></div>
		</div>
		<!--      네비-->
		<nav>
			<ul>
				<li><a href="sub0.jsp" class="fade-html">BackEnd</a></li>
				<li><a href="sub1.jsp" class="fade-html">WEB</a></li>
				<li><a href="sub2.jsp" class="fade-html">PS</a></li>
				<li><a href="sub3.jsp" class="fade-html">AI</a></li>
				<li><a href="sub4.jsp" class="fade-html">UI</a></li>
				<li><a href="sub5.jsp" class="fade-html">ME</a></li>
			</ul>
		</nav>
		<div class="nav">
			<ul>
				<li class="sub-on"><a href="sub0.html" class="fade-html">BackEnd</a></li>
				<li><a href="sub1.jsp" class="fade-html">WEB</a></li>
				<li><a href="sub2.jsp" class="fade-html">PS</a></li>
				<li><a href="sub3.jsp" class="fade-html">AI</a></li>
				<li><a href="sub4.jsp" class="fade-html">UI</a></li>
				<li><a href="sub5.jsp" class="fade-html">ME</a></li>
			</ul>
		</div>
	</header>
	<div class="section-wrap">
		<!--백엔드 사이트1 시작 -->
		<div class="section">
			<h3>1.호텔 예약사이트</h3>
			<!-- 배너 영역 시작 -->
			<div class="slick-sample slick_ppt1">
				<div><img src="img/web-shilla.png" alt=""> </div>
				<div><img src="img/shilla1.png" alt=""></div>
				<div><img src="img/shilla2.png" alt=""></div>
				<div><img src="img/shilla3.png" alt=""></div>
				<div><img src="img/shilla4.png" alt=""></div>
			</div>
			<!-- 배너 영역 끝 -->
			<ul>
				<li>TITLE : THESHILLA</li>
				<li>작업인원 : 2명
				</li>
				<li>TOOLS : spring, jsp, java, html, css, javascript
				<li>CAPTION :
					로그인, 회원가입, 정보수정, 호텔 예약, 카카오api를 이용한 결제, 리뷰 작성을
					구현하였습니다.</li>
			</ul>
			<p><a href="http://hyport1.cafe24.com/shilla/" target="_blank">사이트 바로가기</a></p>
		</div>
		<!--백엔드 사이트1 끝 -->
		<!--백엔드 사이트2 시작 -->
		<div class="section">
			<h3>2.샤넬 쇼핑몰 사이트</h3>
			<!-- 배너 영역 시작 -->
<div class="slick-sample slick_ppt2">
	<div><img src="img/web-chanel.png" alt=""> </div>
	<div><video src="img/chanel1.mp4" controls="controls" muted="muted"></video></div>
	<div><img src="img/chanel2.png" alt=""> </div>
	<div><img src="img/chanel3.png" alt=""> </div>
	<div><img src="img/chanel4.png" alt=""> </div>
</div>
			<!-- 배너 영역 끝 -->
			<ul>
				<li>TITLE : CHANEL</li>
				<li>작업인원 : 1명
				</li>
				<li>TOOLS : jsp, java, html, css, javascript, ajax
				<li>CAPTION :
					jsp를 이용하여 .do, .bo로 받아오는 게시판, 로그인, 주소api를 이용한 회원가입,<br>
					장바구니 담기, 수정, 삭제, 카카오api를 이용한 결제, 구매목록보기, 관리자 상품 등록,수정,삭제와 재고 관리 기능을 구현하였습니다. <br>
					<span style="color:red; font-weight:bold;"> ***로컬에서는 잘 되나 카페24 서버에서는 게시판수정 및 글쓰기 2가지 기능이 안되서 <br>
					위의 슬라이드에 그 부분만 동영상을 추가적으로 올렸습니다.*** </span></li>
			</ul>
			<p><a href="http://hyport1.cafe24.com/app/board/index.jsp" target="_blank">사이트 바로가기</a></p>
		</div>
		<!--백엔드 사이트2 끝 -->
		<!--백엔드 사이트3 시작 -->
		<div class="section">
			<h3>3.테라 로그인,게시판 사이트</h3>
				<!-- 배너 영역 시작 -->
	<div class="slick-sample slick_ppt3">
		<div><img src="img/web-terra.png" alt=""> </div>
		<div><img src="img/terra1.png" alt=""> </div>
	</div>
				<!-- 배너 영역 끝 -->
			<ul>
				<li>TITLE : TERRA</li>
				<li>작업인원 : 1명
				</li>
				<li>TOOLS : jsp, java, html, css, javascript
				<li>CAPTION :
					jsp를 이용하여 로그인, 게시판 기능을 간단하게 구현하였습니다.</li>
			</ul>
			<p><a href="http://hyport1.cafe24.com/ROOT1/terra_site/index.jsp" target="_blank">사이트 바로가기</a></p>
		</div>
		<!--백엔드 사이트3 끝 -->


	</div>
</body>

</html>
