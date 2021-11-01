<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//쿠키(클라이언트 브라우저에 저장되는 String 데이터) 저장하기
	//1.쿠키 정보 생성
	Cookie c1 = new Cookie("test1","hong");  //key,value 한쌍
	Cookie c2 = new Cookie("test2","sooni"); 
	Cookie c3 = new Cookie("test3","honey"); 
	Cookie c4 = new Cookie("image00","honey");
	
	//2.쿠키 정보 유효 시간 설정(저장)
	c1.setMaxAge(60*3);    //단위: 초
	c2.setMaxAge(60*3);
	c3.setMaxAge(60*3);
	c4.setMaxAge(60*3);
	//3.response 객체에 생성된 쿠키 정보를 추가
	response.addCookie(c1);
	response.addCookie(c2);
	response.addCookie(c3);
	response.addCookie(c4);
	response.sendRedirect("cookieRead.jsp");
%>