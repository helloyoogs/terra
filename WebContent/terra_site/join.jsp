<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>

  <link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/header.css">
  <link rel="stylesheet" href="css/footer.css">
  <link rel="stylesheet" href="css/join.css">

  <script src="js/jquery-3.5.0.min.js"></script>
  <script src="js/members.js"></script>


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
<div class="form_wrap">

  	<form action="joinOk.jsp" method="post" name="reg_frm" id="reg_frm" class="terra_join">
      <h2>회원가입</h2>
      <table width="540px">
        <tr>
          <td width="115px" ><label for="id">아이디</label></td>
          <td><input id="id" type="text" name="id"></td>
        </tr>
        <tr>
          <td><label for="pw">비밀번호</label></td>
          <td><input id="pw" type="password" name="pw"></td>
        </tr>
        <tr>
          <td><label for="pw_check">비밀번호 체크</label></td>
          <td><input id="pw_check" type="password" name="pw_check"></td>
        </tr>
        <tr>
          <td><label for="name">이름</label></td>
          <td><input type="text" id="name" name="name"></td>
        </tr>
        <tr>
          <td><label for="eMail">메일</label></td>
          <td><input type="text" id="eMail" name="eMail"></td>
        </tr>
        <tr>
          <td><label for="address">주소</label></td>
          <td><input type="text" id="address" name="address"></td>
        </tr>
      </table>

  		<input type="button" id="submitbtn" value="회원가입">
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
