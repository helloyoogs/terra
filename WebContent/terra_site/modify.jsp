<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.terra_login.ex.*" %>
<!-- 로그아웃된 상태에서 modify하려고 하면 500에러페이지가 나타나므로, ValidMem에 아무것도 없는지 체크 후, 아무것도 없으면 login.jsp로 이동 -->
<% if(session.getAttribute("ValidMem")==null) { %>
	<jsp:forward page="login.jsp"></jsp:forward>
<%} %>

<%
//login에서 login성공하여 main으로 넘어옴
//main에서 회원정보 수정 누름
//session 객체에 있는 id값을 받아옴.
String id = (String)session.getAttribute("id"); //로그아웃하고, 이 객체에 접근이 안 됨. session은 null이니까...
MemberDao dao = MemberDao.getInstance(); //db 읽을 수 있는 정보를 받아옴
MemberDto dto = dao.getMember(id); //db 접속해서 id로 조회함
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/modify.css?ver=1" type="text/css">
<script src="js/jquery-3.5.0.min.js"></script>
<script src="mymodify.js"></script>

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
<form action="modifyOk.jsp" method="post" name="reg_frm" class="terra_modify">
  <h2>회원 정보 수정</h2>
  <table width="540px">
    <tr class="id_padding">
      <td width="115px"><label for="id">아이디</label></td>
      <td><%=dto.getId() %></td>
    </tr>
    <tr>
      <td><label for="pw">비밀번호</label></td>
      <td><input type="password" name="pw"></td>
    </tr>
    <tr>
      <td><label for="pw_check">비밀번호 확인</label></td>
      <td><input type="password" name="pw_check"></td>
    </tr>
    <tr>
      <td><label for="name">이름</label></td>
      <td><input type="text" name = "name" value="<%= dto.getName() %>"></td>
    </tr>
    <tr>
      <td><label for="eMail">메일</label></td>
      <td><input type="text" name="eMail" value="<%=dto.geteMail()%>"></td>
    </tr>
    <tr>
      <td><label for="address">주소</label></td>
      <td><input type="text" name="address" value="<%= dto.getAddress() %>"></td>
    </tr>
    <tr>
      <td style="opacity:0;">수정</td>
      <td><input type="button" value="수정" id="submitbtn"></td>
    </tr>
    <tr>
      <td style="opacity:0;">취소</td>
      <td><input type="reset" value="취소" onclick="javascript:window.location='index.jsp'"></td>
    </tr>
	</table>
<!-- 	<input type="button" value="수정" onclick="updateInfoConfirm()"><br> -->
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
