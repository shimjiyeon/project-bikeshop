<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- HTML 5 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Test</title>
<link rel="stylesheet" href="css/boardlist.css?v=3">
<link rel="stylesheet" href="css/flexbox2.css?v=3">
<style>
	.container{
		height: 200px;	width:200px;
		background-color: #999;
		padding: 50px;
		margin: 100px auto;
	 }
	input{
		padding: 8px;
	}
</style>
</head>
<body>
<%
	if(session.getAttribute("uid") != null) {
		out.print("<script>");
		out.print("alert('로그인이 되어 있습니다.');");
		out.print("history.back(-1);");
		out.print("</script>");
	}else {
%>
<div class="container">
	<form action="loginOk.do" method="POST">
		아이디 : <br>
		<input type="text" name="userid"><br>
		패스워드 : <br>
		<input type="password" name="password"><br><br>
		
		<input type="radio" name="user" value="user" checked> 사용자 <br>
		<input type="radio" name="user" value="admin" checked > 관리자 <br>
	
		<input type="submit" value="Login">
		<input type="button" value="Home"
			   onclick="location.href='index.jsp'" >
	    <input type="button" value="회원가입"
			   onclick="location.href='member/member.jsp'" >				   
			   
	</form>
</div>
<%
	}
%>


</body>
</html>