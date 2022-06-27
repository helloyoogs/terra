<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>육희영포트폴리오</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/animate.css">
        <!--파비콘설정-->
    <link rel="apple-touch-icon" sizes="152x152" href="favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
    <link rel="manifest" href="favicon/site.webmanifest">
    <link rel="mask-icon" href="favicon/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">
    <!--파비콘설정끝-->
<!--    태그설정시작-->
  <meta name="robots" content="ALL">
    <meta name="title" content="웹디자인 포트폴리오, 웹퍼블리셔 포트폴리오">
    <meta name="keywords" content="웹디자인학원, 웹디자이너, 웹퍼블리셔">
    <meta name="NaverBot" content="All">
    <meta name="NaverBot" content="index,follow">
    <meta name="Yeti" content="All">
    <meta name="Yeti" content="index,follow">
    <meta name="format-detection" content="telephone=no">
    <meta name="description" content="웹디자이너, 웹퍼블리셔">
    <meta property="og:title" content="웹디자인 포트폴리오, 웹퍼블리셔 포트폴리오">
    <meta property="og:description" content="웹디자이너, 웹퍼블리셔">
    <meta property="og:url" content="www.greenart-web.com">
    <meta property="og:image" content="&lt;br /&gt;
&lt;b&gt;Warning&lt;/b&gt;:  Use of undefined constant G5_URL - assumed &#39;G5_URL&#39; (this will throw an Error in a future version of PHP) in &lt;b&gt;/home/yunicode1021/html/index.html&lt;/b&gt; on line &lt;b&gt;47&lt;/b&gt;&lt;br /&gt;
G5_URL/metalogo3.jpg">
    <meta property="og:type" content="article">
    <meta property="og:image:width" content="400">
    <meta property="og:image:height" content="300">
    <meta property="al:ios:url" content="applinks://docs">
    <meta property="al:ios:app_store_id" content="12345">
    <meta property="al:ios:app_name" content="웹디자인 포트폴리오, 웹퍼블리셔 포트폴리오">
    <meta property="al:android:url" content="applinks://docs">
    <meta property="al:android:app_name" content="applinks://docs">
    <meta property="al:android:package" content="org.applinks">
    <meta property="al:web:url" content="http://applinks.org/documentation">
    <link rel="canonical" href="https://greenart-web.com/">
<!--    태그설정끝-->


    <style>
        @font-face {
            font-family: "gugi";
            src: url("../font/Gugi-Regular.woff");
        }

        body {
            font-family: "gugi";
        }

        .section {
            width: 100%;
            margin: 50px auto;
            text-align: center;
            font-size: 0;
        }

        .section h1 {
            font-size: 50px;
            margin: 50px;
        }
        .section p{
            font-size: 16px;
            margin-bottom: 20px;
            line-height: 30px;
        }
        .section ul li {
            margin: 20px 20px;
            display: inline-block;
        }

        .section ul li img {
            border-radius: 100px;
        }
        .section p.product{
         margin: 0 auto;
            width: 300px;
            font-size: 30px;
            color: #fff;
            background-color: #82cdc0;
            padding: 10px 0;
            border-radius: 10px;
        }
    </style>
    <script src="js/jquery-3.5.0.min.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/index.js?after"></script>
    <script>
        $("document").ready(function() {
            //alert("")
            new WOW().init();
        }) //jquery End
    </script>
</head>

<body>
    <div class="section">
        <h1 class="box wow flash" data-wow-delay="0.1s">PORTFOLIO</h1>
        <p class="box wow tada ">0-100 항상 0부터 100%의 모든 역량을 <br>
        내는 열정적인 백엔드개발자가되겠습니다.</p>
        <p class="product">제작 기여도: 100%</p>
        <ul>
            <li class="box wow bounceInUp" data-wow-delay="0.1s">
                <img src="img/wow-img/1.jpg" alt="샤넬">
            </li>
            <li class="box wow pulse" data-wow-delay="0.2s">
                <img src="img/wow-img/14.jpg" alt="피부보정">
            </li>
            <li class="box wow headShake" data-wow-delay="0.3s">
                <img src="img/wow-img/11.jpg" alt="아이유">
            </li>
        </ul>
        <ul>
            <li class="left wow swing">
                <img src="img/wow-img/12.jpg" alt="폰케이스">
            </li>
            <li class="box wow rotateInDownRight" data-wow-duration="2s">
                <img src="img/wow-img/5.jpg" alt="질본">
            </li>
            <li class="right wow rubberBand" data-wow-duration="2s">
                <img src="img/wow-img/9.jpg" alt="배너">
            </li>
        </ul>
        <ul>
            <li class="left wow wobble">
                <img src="img/wow-img/15.jpg" alt="패키지디자인">
            </li>
            <li class="right wow wobble" data-wow-duration="2s">
                <img src="img/wow-img/16.jpg" alt="포스터 디자인">
            </li>
            <li class="right wow heartBeat" data-wow-duration="2s">
                <img src="img/wow-img/2.jpg" alt="트와이스">
            </li>
        </ul>
    </div>
</body></html>
