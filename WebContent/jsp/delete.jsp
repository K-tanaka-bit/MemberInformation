<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jp.co.aforce.entity.MembersBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>会員情報削除画面</title>
<style>
body{
font-size:15pt; text-align: center; margin:100px 400px 
}
table{
 width: 80%; margin: 0 auto; max-width: 500px;
}
.inText {
  box-sizing    : border-box;margin-left : 10px;vertical-align: middle;
 width : 80%; max-width : 250px;height : 30px;background    : #ffffff;   border : 2px solid #6666ff; border-radius : 4px;font-size     : 15px; color : #333333; letter-spacing: .1em; 
}
.inText1 {
  box-sizing    : border-box; margin-left : 1px;margin-right   : 2px;vertical-align: middle;
  width : 80%; max-width : 77px; height: 30px; background    : #ffffff; border        : 2px solid #6666ff;  border-radius : 4px; font-size : 15px;color: #333333;  letter-spacing: .1em; 
}
.inText2 {
  box-sizing : border-box;margin-left : 9px;margin-right  : 2px;vertical-align: middle; 
  width  : 80%;  max-width     : 77px;  height        : 30px; background    : #ffffff;  border        : 2px solid #6666ff;border-radius : 4px; font-size : 15px;color : #333333; letter-spacing: .1em;
}
.inText3 {
  box-sizing : border-box;margin-left : 10px;;vertical-align: middle; 
  width  : 75%;  max-width     : 200px;  height        : 30px; background    : #ffffff;  border        : 2px solid #6666ff;border-radius : 4px; font-size : 15px;color : #333333; letter-spacing: .1em;
}
.button1 {
margin-top: 30px;width  : 50%; display  : inline-block; font-size     : 14pt; text-align  : center;  cursor  : pointer;   
  padding   : 12px 12px;    background : #6666ff;   color   : #ffffff;    line-height   : 8px;  transition    : .3s;   border: 2px solid #6666ff;  
}
.button1:hover {
  color : #6666ff;  background    : #ffffff; 
}
.button2 {
  display : inline-block;width  : 50%; margin  : 10px;font-size     : 14pt; text-align    : center;cursor : pointer; padding : 12px 12px;
  background : #ff4d4d;   color   : #ffffff;  line-height   : 8px;transition    : .3s;  border: 2px solid #ff4d4d;  
}
.button2:hover {
  color         : #ff4d4d;  background    : #ffffff;   
}
.button3 {
  display : inline-block;width  : 18%;  height : 30px;font-size: 14pt; text-align    : center;cursor : pointer; padding : 2px 2px;
  background : #6666ff;   color   : #ffffff;  line-height   : 8px;transition    : .3s;  border: 2px solid #6666ff;  
}
.button3:hover {
  color         : #6666ff;  background    : #ffffff;   
}
</style>

</head>
<body>
<% 
MembersBean members = (MembersBean)request.getAttribute("members");
%>
<h2>会員情報削除画面</h2>
<table>
<form action ="../servlet/DeleteGetServlet" method="post">
		<tr><td>会員番号</td><td>
		<input type="text" name="member_no" value="${members.member_no}"class="inText3">
			<input type ="submit" value="表示" class="button3"></form></td></tr>
			
			
<form action="../servlet/DeleteServlet" method="post">
			<input type="hidden" name="member_no" value="${members.member_no}">
			
		<tr><td>名前</td>
		<td><input type="text" name="name" value="${members.name}" class="inText"disabled></td></tr>
			
		<tr><td>年齢</td>
		<td><input type ="text" name="age" value="${members.age}"class="inText"disabled></td></tr>

		<tr><td>生年月日</td><td>
		<select name="birth_year" class="inText2" disabled >
			<option value="${members.birth_year}">${members.birth_year}</option>
			<%
			for (int i = 1920; i <= 2020; i++) {
			%>
			<option value=<%=i%>><%=i%></option>
			<%
			}
			%>
		</select>
		
		<select name="birth_month" class="inText1" disabled >
		<option value="${members.birth_month}">${members.birth_month}</option>
			<%
			for (int i = 1; i <= 12; i++) {
			%>
			<option value=<%=i%>><%=i%></option>
			<%
			}
			%>
		</select>
		
		<select name="birth_day" class="inText1"disabled >
		<option value="${members.birth_day}">${members.birth_day}</option>
			<%
			for (int i = 1; i <= 31; i++) {
			%>
			<option value=<%=i%>><%=i%></option>
			<%
			}
			%>
		</select></td></tr>
		</table>
		<input type="submit" value="削除"class="button1"></form>
	<form action="../jsp/menu.jsp" method="post">
		<input type="submit" value="戻る"class="button2">
	</form>

</body>
</html>