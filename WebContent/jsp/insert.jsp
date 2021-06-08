<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>会員情報新規登録画面</title>
</head>
<body>
	会員情報新規登録画面
	<form action="" method="post">
		名前<input type="text" name="name"><br> 
		年齢<input type="text" name="age"><br>
		 生年月日 
			<select name="birth_year">
			<option value=""></option>
			<%
			for (int i = 1920; i <= 2020; i++) {
			%>
			<option value=<%=i%>><%=i%></option>
			<%
			}
			%>
		</select>
		<select name="birth_month">
		<option value=""></option>
			<%
			for (int i = 1; i <= 12; i++) {
			%>
			<option value=<%=i%>><%=i%></option>
			<%
			}
			%>
		</select>
		<select name="birth_day">
		<option value=""></option>
			<%
			for (int i = 1; i <= 31; i++) {
			%>
			<option value=<%=i%>><%=i%></option>
			<%
			}
			%>
		</select><br>
		<input type="submit" value="登録">
	</form>
	<form action="menu.jsp" method="post">
		<input type="submit" value="戻る">
	</form>
</body>
</html>