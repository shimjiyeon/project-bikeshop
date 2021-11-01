<%@page import="java.io.PrintWriter"%>
<%@page import="dao.BikeUserDao"%>
<%@page import="vo.BikeUser"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="user" class="vo.BikeUser" scope="page" />
    <jsp:setProperty name="user" property="userid" />
    <jsp:setProperty name="user" property="password" />
    <jsp:setProperty name="user" property="name" />
    <jsp:setProperty name="user" property="email" />
    <jsp:setProperty name="user" property="roll" />
<%--         
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록</title>
<style>
	ul{
		list-style: none;
		padding-inline-start:0px;  /* 목록 들여쓰기 없애기 */
	}
	ul #name{
		padding : 5px  20px;
		margin : 5px 0px;
		background-color: tomato;
		color:white;
	}
	li {
		padding : 5px  20px;
	}
</style>
</head>
  <body>
<% if(user.getUserid() == null || user.getPassword() == null || user.getName() == null || user.getEmail() == null || user.getRoll() == null  ){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('입력이 안된부분을 확인해주세요!');");
	script.println("history.back( );");
	script.println("</script>");
}  else { 
	
	BikeUser user1 = new BikeUser();
	int result = user1.join(user.getUserid(), user.getPassword()); 
	if (result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 존재하는 아이디입니다!');");
		script.println("history.back( );");
		script.println("</script>");
	}
	else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'home.jsp'");
		script.println("</script>");
	}
	}
	
%> 
<h3>!!WELCOME!! 회원가입 완료되셨습니다. </h3>

</body>
</html>  --%>