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
    <link rel="stylesheet" href="css/sub4-ui.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <script src="js/jquery-3.5.0.min.js"></script>
    <script src="js/header.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <style>
        .card-wrap {
            background-color: #f1f1f1;
            padding-top: 50px;
            position: relative;
        }

        .card-wrap span{
            position: absolute;
            top: 50%;
            left: 62%;
            font-size: 30px;
            transform: translate(100%, -50%);
            color: #82cdc0;
        }
        @media screen and (max-width:1522px){
                    .card-wrap span{
            position: absolute;
            top: 50%;
            left: 66%;
            font-size: 30px;
            transform: translate(100%, -50%);
            color: #82cdc0;
        }
        }
        @media screen and (max-width:1118px){
                    .card-wrap span{
            position: absolute;
            top: 50%;
            left: 70%;
            font-size: 30px;
            transform: translate(100%, -50%);
            color: #82cdc0;
        }
        }
        @media screen and (max-width:888px){
                    .card-wrap span{
            position: absolute;
            top: 50%;
            left: 80%;
            font-size: 30px;
            transform: translate(100%, -50%);
            color: #82cdc0;
        }
        }
        @media screen and (max-width:619px){
                    .card-wrap span{
            position: absolute;
            top: 50%;
            left: 87%;
            font-size: 30px;
            transform: translate(100%, -50%);
            color: #82cdc0;
        }
        }
        .card-wrap span:first-child{
        padding-bottom: 250px;
        }
        .card-wrap span:last-of-type{
        padding-top: 250px;
        }

        .card {
            background-color: #f1f1f1;
            margin: 0 auto;
            width: 392px;
            height: 765px;
            background-image: url(img/card/phone.png);
            background-repeat: no-repeat;
            position: relative;
            font-size: 0;
        }

        .contents {
            width: 328px;
            height: 709px;
            overflow: hidden;
            position: absolute;
            left: 30px;
            top: 19px;
            border-radius: 40px;
            overflow-y: scroll;

        }

        .contents img {
            width: 100%;

        }

        .contents::-webkit-scrollbar {
            display: none;
        }

        .bg-top {
            position: absolute;
            z-index: 100;
            left: 100px;
            top: 15px;

        }
    </style>
</head>

<body>
    <header>
        <div class="logo">
            <a href="index.jsp"><img src="img/logo.png" alt="170x78"></a>
        </div>
        <h1><span>*</span>UI</h1>
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
                <li class="sub-on"><a href="sub4.jsp" class="fade-html">UI</a></li>
                <li><a href="sub5.jsp" class="fade-html">ME</a></li>
            </ul>
        </div>
    </header>
    <div class="section-wrap">
        <div class="section">
            <h3>1.MUSIC APP</h3>
            <img src="img/ui-music.png" alt="830x480">
            <ul>
                <li>TITLE:SOUND CLOUD</li>
                <li>CONCEPT:UNIQUE, MORDERN, SIMPLY</li>
                <li>COLOR: <span class="colorchip1">■</span>#ff3000</li>
                <li>CAPTION:메인 컬러인 주황색은 화려하지만
                    심플하게 레이아웃 배치를 하여
                    언밸런스함으로 깔끔하면서도 유니크한 디자인 유도하였습니다.</li>
            </ul>
        </div>
        <div class="card-wrap">
            <span><i class="fas fa-angle-up"></i></span>
            <span><i class="fas fa-angle-down"></i></span>
            <div class="card">
                <div class="bg-top"> <img src="img/card/top.png" alt="휴대폰탑사진"></div>
                <div class="contents">
                    <img src="img/card/load.png" alt="로딩화면">
                    <img src="img/card/main.png" alt="메인화면">
                    <img src="img/card/play.png" alt="장르">
                    <img src="img/card/my.png" alt="나의플레이리스트">
                    <img src="img/card/search.png" alt="검색화면">
                </div>
            </div>
        </div>
        <div class="section">
            <h3>2.ICON DESIGN</h3>
            <img src="img/ui-weather.jpg" alt="830x480">
            <ul>
                <li>TITLE: WEATHER APP</li>
                <li>CONCEPT:CLASSY, SIMPLY</li>
                <li>COLOR: <span class="colorchip2">■</span>#7982bd</li>
                <li>CAPTION: 톤다운된 하늘색을 사용해 눈의 피로도를 줄이고 한눈에 보기쉽도록디자인하였습니다.</li>
            </ul>
        </div>
    </div>
</body></html>
