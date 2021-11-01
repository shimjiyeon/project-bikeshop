<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="vo.Bike"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자전거 상품 목록</title>
<style>
h1{
color: #fff;
font-size: 30px;
font-weight: bold;
}
h2{
color: #fff;
font-size: 30px;
font-weight: bold;
}
.shopcart>a{
color:#fff;
float:right;
font-size: 20px;
text-decoration:none;

}
td{
font-size: 20px;
color:#fff;
}
.imgBox>img{
 height:250px; 
 width:250px;
 border:"30px auto";
}
body{

	background-color:#323232;
	}
</style>
</head>
<body>


<h2 align="center"> 자전거 상품 목록</h1><P></P>
<a href="login.jsp">로그아웃 </a>
<table align="center">
<c:if test="${bikes.size() != 0 }">
	<tr>
		<c:set var="i" value="0"/>
		<c:forEach var="vo" items="${bikes}">
		<c:set var="i" value="${i+1}"/>
		<td width=270>
			<a href="bikeView.do?id=${vo.id }">
			<img src="./image/${vo.image }" 
			height="100" width="100" border="0"></a><br>
			상품명 : ${vo.kind }<br>
			가격 :<fmt:formatNumber value="${vo.price}" pattern="###,##0" />원<br> 
		</td>
		<c:if test="${i!=0 && i%3 == 0 }">
			</tr>
			<tr><td colspan="4"><hr/></td></tr>
			<tr>			
		</c:if>
		</c:forEach>
	</tr>
</c:if>
</table>
	
<br>
<a href="bikeCartList.do">장바구니</a><br>
<a href="comment/c_boardView.jsp">리뷰 게시판</a>
	<c:if test="${sessionScope.user == null }">
		<br>
		<a href="comment/q_boardView.jsp">QnA 게시판</a><br>
		<input type="text"><input type="button" value="상품 검색"> 
	</c:if>
<br>
<h1 align="center">오늘 본 상품</h1>
<table align="center" width="600">
	<tr>
			<c:forEach var="str" items="${images }">
			<td align="center">
				<img src="./image/${str}" height="100" width="100" border="1">
				<a href="./image/${str}"></a>
			</td>
			</c:forEach>
	</tr>
</table>

<div style="text-align: center;">
<hr>
	<a class="pagenum" href="?page=2">&lt;</a>

	
	<c:forEach var="i" begin="${Page.startPage }" end="${Page.endPage }">
		<a class="pagenum" href="?page=${i }">${i }</a>
	</c:forEach>
	
	<a class="pagenum" href="?page=5">&gt;</a>  
 
</div>	
<%@ include file="../bottom.jsp" %>
</body>
</html>