<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int count = (Integer) request.getAttribute("count");
	if (count > 0) {
	%>
	変更に成功しました。
	<%
	} else {
	%>
	変更に失敗しました。
	<%
	}
	%>
</body>
</html>