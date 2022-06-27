<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TERRA</title>
    <link rel="stylesheet" href="css/reset.css?after">
    <link rel="stylesheet" href="css/header.css?after">
    <link rel="stylesheet" href="css/sub1.css?after">
    <link rel="stylesheet" href="css/sub2.css?after">
    <link rel="stylesheet" href="css/sub3.css?after">
    <link rel="stylesheet" href="css/footer.css?after">

    <!--    파비콘설정-->
    <link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
    <link rel="manifest" href="favicon/site.webmanifest">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">
    <!--    파비콘설정끝-->

    <script src="js/jquery-3.5.0.min.js"></script>
</head>

<body>
    <!--header.css start-->
    <div class="header-video" id="home">
        <video src="video/bannervideo.mp4" autoplay preload="auto" muted loop></video>
    </div>
    <header>
		<div class="login_board">
			<c:choose>
				<c:when test="${id eq null}">
					<span class="terra_login"><a href="login.jsp">로그인</a></span>
					<span><a href="login.jsp">게시판</a></span>
				</c:when>
				<c:otherwise>
					<span class="terra_login"><a href="logout.jsp">로그아웃</a></span>
					<span><a href="modify.jsp">정보수정</a></span>
					<span><a href="list.do">게시판</a></span>
				</c:otherwise>
			</c:choose>
		</div>
		<nav>
            <ul>
                <li><a href="#home">HOME</a></li>
                <li><a href="#terra">TERRA</a></li>
                <li><a href="#package">PACKAGE</a></li>
                <li><a href="#tv">TV CF</a></li>
            </ul>
        </nav>
    </header>
    <!--header.css End-->
    <!--    sub1-home.css start-->
    <div class="sub1-wrap" id="terra">
        <h1><span>▷</span>TERRA</h1>
        <img src="img/sub1-mobile.jpg" alt="모바일용terra이미지">
        <div class="sub1">
        </div>
        <div class="sub1-txt">
            <p>세계 공기질 부문 1위인 호주에서 자란 청정맥아를 사용</p>
            <p>오직 발효공정에서 나오는 100% 리얼탄산으로</p>
            <p>거품은 조밀하고 탄산은 오래 지속.</p>
            <p>국내 레귤러 라거 최초 Green Bottle을 사용.</p>
            <p>토네이도 패턴으로 눈으로 보는 청량감을 구현</p>
        </div>
    </div>
    <!--    sub1-home.css End-->
    <!--    .sub2 start-->
    <div class="sub2-wrap" id="package">
        <h1><span>▷</span>PACKAGE</h1>
        <div class="sub2">
            <div class="sub2-2">
                <div class="imgHoverEvent event3">
                    <div class="imgBox"><img src="img/sub2-bottle.jpg" alt="sub2병"></div>
                    <div class="hoverBox">
                    </div>
                </div>
                <ul>
                    <li>BOTTLE</li>
                    <li>330 mL</li>
                    <li>500 mL</li>
                </ul>
            </div>
            <div class="sub2-2">
                <div class="imgHoverEvent event3">
                    <div class="imgBox"><img src="img/sub2-pet.jpg" alt="sub2페트"></div>
                    <div class="hoverBox">
                    </div>
                </div>
                <ul>
                    <li>PET</li>
                    <li>1,000 ml</li>
                    <li>1,600 ml</li>
                </ul>
            </div>
            <div class="sub2-2">
                <div class="imgHoverEvent event3">
                    <div class="imgBox"><img src="img/sub2-can.jpg" alt="sub2캔"></div>
                    <div class="hoverBox">
                    </div>
                </div>
                <ul>
                    <li>CAN</li>
                    <li>355 mL</li>
                    <li>500 mL</li>
                </ul>
            </div>
        </div>
    </div>
    <!--    .sub2 End-->
    <!--    .sub3 start-->
    <div class="sub3-wrap" id="tv">
        <h1><span>▷</span>TV CF</h1>
        <div class="sub3">
            <video src="video/sub3-1.mp4" controls muted></video>
            <video src="video/sub3-2.mp4" controls muted></video>
            <video src="video/sub3-3.mp4" controls muted></video>
        </div>
    </div>
    <!--    sub3 End-->
    <!--    footer start-->
    <div class="footer-top">
        <h1><span>▷</span>도수</h1>
        <img src="img/sub4.jpg" alt="도수이미지">
        <p>4.6도</p>
    </div>
    <div class="footer-center-wrap">
        <div class="footer-center1">
            <img src="img/footer-center-hite-bg.jpg" alt="하이트배경">
            <img src="img/footer-center-hite-item.png" alt="하이트">
            <ul>
                <li>HITE</li>
                <li>영하에서 만들어진</li>
                <li>원초적 시원함</li>
                <li><a href="https://www.hitejinro.com/brand/view.asp?brandcd2=A01">자세히보기</a></li>
            </ul>
        </div>
        <div class="footer-center2">
            <img src="img/footer-center-max-bg.jpg" alt="맥스배경">
            <img src="img/footer-center-max-item.png" alt="맥스">
            <ul>
                <li>MAX</li>
                <li>풍부한 Cream 生 </li>
                <li>All Malt Beer!</li>
                <li><a href="https://www.hitejinro.com/brand/view.asp?brandcd2=A02">자세히보기</a></li>
            </ul>
        </div>
    </div>
    <footer>
        <p>(06075) 서울특별시 강남구 영동대로 714 하이트진로빌딩 / 대표전화 080-210-0150 / 사업자등록번호 214-81-00777</p>
        <p>Copyright© 2016 HITEJINRO CO.LTD. ALL RIGHTS RESERVED.</p>
    </footer>
    <!--    footer End-->
</body></html>
