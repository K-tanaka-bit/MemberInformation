<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録結果</title>
</head>
<body>


	<%
	int count = (Integer) request.getAttribute("count");
	if (count > 0) {
	%>
	登録に成功しました。
	<%
	} else {
	%>
	登録に失敗しました。
	<%
	}
	%>
	<form action="../jsp/menu.jsp" method="post">
		<input type="submit" value="メニューに戻る">
	</form>
</body>
</html>