<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メニュー</title>
<style>
body{
font-size:large;
text-align: center;
margin:150px 400px 
}
.button1 {
  display       : inline-block;  font-size : 15pt; text-align    : center;      
  cursor        : pointer;   padding: 8px 17px; background    : #6666ff;   
  color         : #ffffff;    line-height   : 1em;    transition    : .3s;      
  border        : 2px solid #6666ff;  margin:10px 10px  
}
.button1:hover {
  color         : #6666ff;     
   background    : #ffffff;   
}
.button2 {
  display       : inline-block;  font-size : 15pt;  text-align    : center;   cursor : pointer;    
  padding       : 8px 36px;   background    : #00b300;     color         : #ffffff;    
  line-height   : 1em;   transition    : .3s;       border        : 2px solid #00b300;   margin:10px 10px  
}
.button2:hover {
  color         : #00b300;    
  background    : #ffffff;   
}
.button3 {
  display       : inline-block;
  font-size     : 15pt; text-align    : center;  cursor   : pointer;  padding  : 8px 36px; background : #ff7f00; color : #ffffff; 
  line-height   : 1em;  transition: .3s;  border : 2px solid #ff7f00;    margin:10px 10px  
}
.button3:hover {
  color         : #ff7f00;
  background    : #ffffff;    
}
</style>
</head>
<body>
<h2>メニュー画面</h2>
<form action="insert.jsp" method="post">
<input type="submit" value="会員情報新規登録" class="button1">
</form>
<form action="update.jsp"method="post" >
<input type="submit" value="会員情報変更"class="button2">
</form>
<form action="delete.jsp"method="post">
<input type="submit" value="会員情報削除"class="button3">
</form>


</body>
</html>