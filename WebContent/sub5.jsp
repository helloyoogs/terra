<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

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
    <link rel="stylesheet" href="css/sub5-me.css">
    <script src="js/jquery-3.5.0.min.js"></script>
    <script src="js/progressbar.js"></script>
    <script src="js/pro.js"></script>
    <script src="js/header.js"></script>
<!--    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>-->
    <style>
        .progressbar-text {
            display: none;
        }
    </style>
</head>

<body>
    <header>
        <div class="logo">
            <a href="index.jsp"><img src="img/logo.png" alt="170x78"></a>
        </div>
        <h1><span>*</span>ME</h1>
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
                <li><a href="sub2.jsp" class="fade-html">PS</a></li>
                <li><a href="sub3.jsp" class="fade-html">AI</a></li>
                <li><a href="sub4.jsp" class="fade-html">UI</a></li>
                <li class="sub-on"><a href="sub5.jsp" class="fade-html">ME</a></li>
            </ul>
        </div>
    </header>
    <div class="section-wrap">
        <div class="section">
            <h3>1.PROFILE</h3>
            <ul>
                <li>포토샵 <div id="pro1" class="progress"></div>
                </li>
                <li>일러스트 <div id="pro2" class="progress"></div>
                </li>
                <li>코딩 <div id="pro3" class="progress"></div>
                </li>
                <li> 자격증 :
                    웹디자인 기능사,
                    컴퓨터 활용 능력 2급, <br>
                    JLPT2급, 샵마스터 자격증, 운전면허(2종보통)
                </li>
            </ul>
        </div>
        <div class="section">
            <h3>2.CONTACT</h3>
            <ul>
                <li> HELLO <br>
                    I'm ready to be with you</li>
                <li>TEL : 010.6230.7781 </li>
                <li>MAIL: helloyoogs@naver.com </li>
            </ul>
            <span><a href="img/resume.pdf" target="_blank">RESUME DOWN</a></span>
        </div>
    </div>
</body></html>
