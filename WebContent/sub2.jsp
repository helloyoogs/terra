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
    <link rel="stylesheet" href="css/foundation-1.css" type="text/css">
    <link rel="stylesheet" href="css/twentytwenty.css" type="text/css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/swiper.css">
        <link rel="stylesheet" href="css/sub2-photo.css">
    <script src="js/jquery-3.5.0.min.js"></script>
    <script src="js/header.js"></script>
    <script src="js/wheel1.js"></script>
    <script src="js/wheel.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <style>
        body {
            font-family: "gugi";
        }
    </style>
</head>

<body>
    <header>
        <div class="logo">
            <a href="index.jsp"><img src="img/logo.png" alt="170x78"></a>
        </div>
        <h1><span>*</span>PS</h1>
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
                <li><a href="sub0.jsp" class="fade-html">BackEnd</a></li>
                <li><a href="sub1.jsp" class="fade-html">WEB</a></li>
                <li class="sub-on"><a href="sub2.jsp" class="fade-html">PS</a></li>
                <li><a href="sub3.jsp" class="fade-html">AI</a></li>
                <li><a href="sub4.jsp" class="fade-html">UI</a></li>
                <li><a href="sub5.jsp" class="fade-html">ME</a></li>
            </ul>
        </div>
    </header>
    <div class="section-wrap">
        <div class="section">
            <h3>1.피부보정</h3>
            <div class="row">
                <div class="large columns">
                    <div class="twentytwenty-container">
                        <img src="img/before1.jpg">
                        <img src="img/after1.jpg">
                    </div>
                </div>
                     <div class="large columns">
                    <div class="twentytwenty-container">
                        <img src="img/before2.jpg">
                        <img src="img/after2.jpg">
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <h3>2.포스터 디자인</h3>
            <img src="img/photo4.jpg" alt="830x480">
            <div class="section-txt">
                <ul>
                    <li>CONCEPT: SIMPLY, UNIQUE</li>
                    <li>CAPTION:
                        도형으로 포인트를 주어 유니크한 포스터 디자인을
                        하였습니다.<br>
                </ul>
            </div>
        </div>
        <div class="section">
            <h3>3.상세 페이지</h3>
            <img src="img/photo5.jpg" alt="830x480">
            <div class="section-txt p">
                <p class="pop"><a href="#">자세히 보기</a></p>
            </div>
        </div>
        <div class="section">
            <h3>4.배너 디자인</h3>
            <img src="img/photo2.jpg" alt="830x480">
            <div class="section-txt">
                <ul>
                    <li>COLOR: <span class="colorchip1">■</span>#feb6c1, <span class="colorchip1">■</span>#ffda94</li>
                    <li>CAPTION:
                        상품 구매 유도를 위해
                        텍스트에 포인트를 주었습니다.</li>
                </ul>
            </div>
        </div>
        <div class="section">
            <h3>5.쿠폰 디자인</h3>
            <img src="img/photo3.jpg" alt="830x480">
        </div>
    </div>
    <div class="indicator">
        <ul>
            <li><a href="#">●</a></li>
            <li><a href="#">●</a></li>
            <li><a href="#">●</a></li>
            <li><a href="#">●</a></li>
            <li><a href="#">●</a></li>
        </ul>
    </div>
    <div class="window"></div>
    <div class="close">
        <span>X</span>
    </div>
    <div class="window-content">
        <ul>
            <li><img src="img/photo-popup1.png" alt="detail image"></li>
            <li><img src="img/photo-popup1.jpg" alt="detail image"></li>
            <li><img src="img/photo-popup2.png" alt="detail image"></li>
            <li><img src="img/photo-popup2.jpg" alt="detail image"></li>
            <li><img src="img/photo-popup3.jpg" alt="detail image"></li>
        </ul>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="js/jquery.event.move.js"></script>
    <script src="js/jquery.twentytwenty.js"></script>
    <script>
        $(function() {
            setTimeout(function() {
                $(".twentytwenty-container").twentytwenty({
                    default_offset_pct: 0.5
                });

            }, 150)
        });
    </script>
</body></html>
