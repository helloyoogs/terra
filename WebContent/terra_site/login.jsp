<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang=ko dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">

    <!--    파비콘설정-->
    <link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
    <link rel="manifest" href="favicon/site.webmanifest">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">
    <!--    파비콘설정끝-->

  </head>
  <body>
<!--header.css start-->
    <header>
		<div class="login_board">
			<c:choose>
				<c:when test="${id eq null}">
					<span class="terra_login"><a href="login.jsp">로그인</a></span>
					<span><a href="login.jsp">게시판</a></span>
				</c:when>
				<c:otherwise>
								<span>${id}</span>
					<span class="terra_login"><a href="logout.jsp">로그아웃</a></span>
					<span><a href="modify.jsp">정보수정</a></span>
					<span><a href="list.do">게시판</a></span>
				</c:otherwise>
			</c:choose>
		</div>
		<nav>
            <ul>
                <li><a href="index.jsp#home">HOME</a></li>
                <li><a href="index.jsp#terra">TERRA</a></li>
                <li><a href="index.jsp#package">PACKAGE</a></li>
                <li><a href="index.jsp#tv">TV CF</a></li>
            </ul>
        </nav>
    </header>
    <!--header.css End-->
    <div class="form_wrap">
      <form class="terra_login" action="../terra_site/loginOk.jsp" method="post">
        <h2>로그인</h2>
        <input type="text" name="id" placeholder="아이디"> <br/>
        <input type="password" name="pw" placeholder="비밀번호"> <br/>
        <input type="submit" value="로그인">
        <p><a href="join.jsp">회원가입</a></p>
      </form>
    </div>

    <!--    footer start-->

    <footer>
        <p>(06075) 서울특별시 강남구 영동대로 714 하이트진로빌딩 / 대표전화 080-210-0150 / 사업자등록번호 214-81-00777</p>
        <p>Copyright© 2016 HITEJINRO CO.LTD. ALL RIGHTS RESERVED.</p>
    </footer>
    <!--    footer End-->
  </body>
</html>
