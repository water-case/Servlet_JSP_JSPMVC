<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
pageContext.setAttribute("aa", "hello");
%>
<body>
	${requestScope.model}입니다 <br >
	${names[1]} <br >
	${notice.title} <br >
	${aa} <br>
	${param.n} <br>
	${header.accept} <br>
	${pageContext.request.method}
</body>
</html>