<%@page import="java.time.LocalDate"%>
<%@page import="vo.Page"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="vo.Bike"%>
<%@page import="java.util.List"%>
<%@page import="dao.BikeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/* 	
	BikeDao dao = BikeDao.getInstance();

	int pageNo;
	if(request.getParameter("page")==null) pageNo=1;
	else pageNo = Integer.parseInt(request.getParameter("page")); 
	int pageSize =5; 
	Page page =new Page(pageNo,dao.readCount(),pageSize); 
	Map<String,Integer> map = new HashMap<>();
	map.put("pageSize",pageSize);
	map.put("startNo",page.getStartNo());
	List<Bike> list = dao.getList(map);
	
	request.setAttribute("today", LocalDate.now());
	request.setAttribute("page", page);
	request.setAttribute("list", list);
	pageContext.forward("BikeView.jsp"); */

%>