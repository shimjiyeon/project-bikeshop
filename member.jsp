<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<body>

	<h2>회원가입</h2>
	
	<form action="User.jsp" method="post">
		아이디:<input type="text" name="id"><br/>
		이름:<input type="text" name="name"><br/>
		비밀번호:<input type="password" name="pw"><br/>
		
		이메일:<input type="text" name="email1" size="5">
		@<select name="email1">
			<option>naver.com</option>
			<option>hanmail.net</option>
			<option>damn.net</option>
			<option>본인입력</option>
		</select>
		<input type="text" name="email2" size="5">
		
		
		<br/>
		<input type="radio" name="user" value="user" >고객
		<input type="radio" name="admin" value="admin" >관리자
		
		<input type="submit" value="가입">
		
	</form>

</body>
</body>
</html>