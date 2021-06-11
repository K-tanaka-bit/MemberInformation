<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>会員情報新規登録画面</title>

<style>
body{
font-size:15pt; text-align: center; margin:100px 400px 
}
table{
 width: 80%; margin: 0 auto; max-width: 500px;
}
div{
 color:red;
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
</style>
</head>
<body>

<h2>会員情報新規登録画面</h2><br>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div>
	<%=(String) request.getAttribute("message")%>
	</div>
	<%
	}
	%>
	<table>
	<form action="../servlet/InsertFirstServlet" method="post" style="display: inline">
		<tr><td>名　前</td><td><input type="text" name="name" class="inText"></td></tr>
		<tr><td>	年　齢</td><td><input type="text" name="age" class="inText"></td></tr>
		 <tr><td>生年月日 </td><td>
			<select name="birth_year"class="inText2">
			<option value=""></option>
			<%
			for (int i = 1920; i <= 2020; i++) {
			%>
			<option value=<%=i%>><%=i%></option>
			<%
			}
			%>
		</select>
		<select name="birth_month"class="inText1" >
		<option value=""></option>
			<%
			for (int i = 1; i <= 12; i++) {
			%>
			<option value=<%=i%>><%=i%></option>
			<%
			}
			%>
		</select>
		<select name="birth_day" class="inText1">
		<option value=""></option>
			<%
			for (int i = 1; i <= 31; i++) {
			%>
			<option value=<%=i%>><%=i%></option>
			<%
			}
			%>
		</select> 
		</table>
		<input type="submit" value="登録"  class="button1">
		</form>
		<form action="../jsp/menu.jsp" method="post" >
		<input type="submit" value="戻る" class="button2"  >
		</form>
			
</body>
</html>