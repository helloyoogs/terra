<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% //ValidMem이 없는 상태(=로그아웃 했거나 아직 아예 로그인 안한 경우)
if(session.getAttribute("ValidMem") == null ) {
%>
<jsp:forward page="login.jsp"/>
<%} 

String name = (String)session.getAttribute("name");
String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>
<jsp:include page="../terra_site/index.jsp"></jsp:include>