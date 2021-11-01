<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//쿠키 정보 가져오기
	//1. request 객체에서 받아오기
	Cookie[] cookies = request.getCookies();

	out.print("result1<br>");
	//2. 쿠키 정보값 출력
	for(Cookie c : cookies){
		out.print(c.getName());
		out.print(":");
		out.print(c.getValue());
		out.print(" <br>");
	}
	
	out.print("result2<br>");
	
	//3. 쿠키 정보 검색
	for(Cookie c : cookies){
		if(c.getName().startsWith("image")){  //시작문자열 검사
		//if(c.getName().equals("test1")){	
			out.print(c.getName());
			out.print(":");
			out.print(c.getValue());
			out.print("<br>");			
		}
	}
	
	

%>