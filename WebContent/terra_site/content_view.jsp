<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>TERRA</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/sub1.css">
    <link rel="stylesheet" href="css/sub2.css">
    <link rel="stylesheet" href="css/sub3.css">
    <link rel="stylesheet" href="css/footer.css">
		<link rel="stylesheet" href="css/content_view.css">


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
                <li><a href="index.jsp#home">HOME</a></li>
                <li><a href="index.jsp#terra">TERRA</a></li>
                <li><a href="index.jsp#package">PACKAGE</a></li>
                <li><a href="index.jsp#tv">TV CF</a></li>
            </ul>
        </nav>
    </header>
    <!--header.css End-->
<form action="modify.do"  class="table_wrap">
<c:choose>
			<c:when test="${id eq content_view.bName}">
				<h2>글 수정</h2>
				<table>
					<input type="hidden" name="bId" value="${content_view.bId }">
					<tr>
						<td>번호</td>
						<td>${content_view.bId}</td>
					</tr>
					<tr>
						<td>조회수</td>
						<td>${content_view.bHit}</td>
					</tr>
					<tr>
						<td>글쓴이</td>
						<td>${content_view.bName}</td>
					</tr>
					<tr>
						<td>제목</td>
						<td><input type="text" name="bTitle"
							value="${content_view.bTitle}"></td>
					</tr>
					<tr>
						<td style="vertical-align: middle">내용</td>
						<td><textarea rows="10" name="bContent">${content_view.bContent}</textarea>
						</td>
					</tr>
					<tr>
						<td style="opacity: 0;">수정</td>
						<td><input type="submit" value="수정"><br /> <br /> <a
							href="list.do">목록보기</a> &nbsp;&nbsp;<a
							href="delete.do?bId=${content_view.bId}">삭제</a> &nbsp;&nbsp;<a
							href="reply_view.do?bId=${content_view.bId}">답변</a>
					</tr>
				</table>
			</c:when>
			<c:otherwise>
				<h2>게시판</h2>
				<table>
					<tr>
						<td>번호</td>
						<td>${content_view.bId}</td>
					</tr>
					<tr>
						<td>조회수</td>
						<td>${content_view.bHit}</td>
					</tr>
					<tr>
						<td>글쓴이</td>
						<td>${content_view.bName}</td>
					</tr>
					<tr>
						<td>제목</td>
						<td>${content_view.bTitle}</td>
					</tr>
					<tr>
						<td style="vertical-align: middle">내용</td>
						<td>${content_view.bContent}</td>
					</tr>
					<tr>
						<td style="opacity: 0;">수정</td>
						<td><a href="list.do">목록보기</a> &nbsp;&nbsp;<a
							href="reply_view.do?bId=${content_view.bId}">답변</a>
					</tr>
				</table>
			</c:otherwise>
		</c:choose>
</form>
  <!--    footer start-->
    <footer>
        <p>(06075) 서울특별시 강남구 영동대로 714 하이트진로빌딩 / 대표전화 080-210-0150 / 사업자등록번호 214-81-00777</p>
        <p>Copyright© 2016 HITEJINRO CO.LTD. ALL RIGHTS RESERVED.</p>
    </footer>
    <!--    footer End-->
</body>
</html>
