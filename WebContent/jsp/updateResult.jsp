<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
font-size:15pt;
text-align: center;
margin:150px 400px 
}
</style>
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
	<form action="../jsp/menu.jsp" method="post">
		<input type="submit" value="メニューに戻る">
	</form>
</body>
</html>