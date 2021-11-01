<%@page import="vo.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cart List</title>
</head>
<body>
<h1 align="center"> <font color ="black"><font size = 15> 장바구니</font></font></h1>
<table width="600" align="center">
<tr>
<td align="right"><a href="bikeList.do">쇼핑계속하기</a></td>
</tr>
</table>
<c:choose>
<c:when test="${cartList.size() == 0 }">
<h1 align="center">상품이 존재하지 않습니다.</h1>
</c:when>
<c:otherwise>
<form action="bikeCartRemove.do" method="post" name="myForm">
<table align="center" width="600" border="1">
	<tr align="center" bgcolor="orange">
		<td>번호	</td>
		<td>상품이미지</td>
		<td>상품명</td>
		<td>가격</td>
		<td>수량</td>
		<td align="center">
		<input type="submit" name="delete" value="삭제" />
		</td>
	</tr>
	<c:set var="num" value="1" />
	<c:forEach var="ca" items="${cartList }">
	<tr align="center">
		<td>${num }</td>
		<td><img src="./image/${ca.image }" width="70" height="70"/></td>
		<td>${ca.kind }</td>
		<td style=" text-align: right;">
		<fmt:formatNumber value="${ca.price }" pattern="###,###,##0 원"/>
		</td>
		<td>${ca.qty }</td>
		<td align="center">
		<input type="checkbox" name="delete" value="${ca.kind}"/>
		</td>
	</tr>
	<c:set var="num" value="${num+1}"/>
	</c:forEach>
</table>
</form>
<table align="center" width="600" border="0">
	<tr align="center" bgcolor="yellow">
		<td align="right" colspan="6">
		<font color ="gray" size="5">총 결제금액 : </font>
		<font color ="black" size="8">
		<fmt:formatNumber value="${totalMoney }" 
				pattern="###,###,##0 원"/>
		</font></td>
		</tr>
		</table>
</c:otherwise>
</c:choose>
</body>
</html>