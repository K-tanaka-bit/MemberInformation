<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jp.co.aforce.entity.MembersBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>会員情報変更</title>
</head>
<body>
<% 
MembersBean members = (MembersBean)request.getAttribute("members");
%>
会員情報変更画面
<form action ="../servlet/UpdateGetServlet" method="post">
会員番号<input type="text" name="member_no" value="${members.member_no}">
<input type ="submit" value="表示"></form>

<form action="../servlet/UpdateServlet" method="post">
<input type="hidden" name="member_no" value="${members.member_no}">
名前<input type="text" name="name" value="${members.name}">
			
年齢<input type ="text" name="age" value="${members.age}"><br>

生年月日<select name="birth_year">
			<option value="${members.birth_year}">${members.birth_year}</option>
			<%
			for (int i = 1920; i <= 2020; i++) {
			%>
			<option value=<%=i%>><%=i%></option>
			<%
			}
			%>
		</select>
		
		<select name="birth_month">
		<option value="${members.birth_month}">${members.birth_month}</option>
			<%
			for (int i = 1; i <= 12; i++) {
			%>
			<option value=<%=i%>><%=i%></option>
			<%
			}
			%>
		</select>
		
		<select name="birth_day">
		<option value="${members.birth_day}">${members.birth_day}</option>
			<%
			for (int i = 1; i <= 31; i++) {
			%>
			<option value=<%=i%>><%=i%></option>
			<%
			}
			%>
		</select><br>
		
		<input type="submit" value="変更">
	</form>
	
	<form action="../jsp/menu.jsp" method="post">
		<input type="submit" value="戻る">
	</form>


</body>
</html>