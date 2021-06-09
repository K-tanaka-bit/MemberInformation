<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メニュー</title>
<style>
body{
text-align: center;
}
</style>
</head>
<body>
メニュー画面
<form action="insert.jsp" method="post">
<input type="submit" value="会員情報新規登録">
</form>
<form action="update.jsp"method="post">
<input type="submit" value="会員情報変更">
</form>
<form action="delete.jsp"method="post">
<input type="submit" value="会員情報削除">
</form>


</body>
</html>