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
	削除に成功しました。
	<%
	} else {
	%>
	削除に失敗しました。
	<%
	}
	%>
	<form action="../jsp/menu.jsp" method="post">
		<input type="submit" value="メニューに戻る">
	</form>
</body>
</html>