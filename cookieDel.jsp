<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	for(Cookie c : cookies){
		if(c.getName().equals("test3")){
			//쿠키 정보 삭제
			c.setMaxAge(0);		//1. 유효시간변경
			response.addCookie(c);   //2.response로 전달
		}
	}


%>