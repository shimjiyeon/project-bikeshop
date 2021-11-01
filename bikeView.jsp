<%@page import="java.text.DecimalFormat"%>
<%@page import="vo.Bike"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bike 상세 정보</title>
<style>
.aba>td,.aba>td>a{

color: #fff;
text-decoration: none;
}
.att>a{
color: #fff;
text-decoration: none;
font-size: 25px;

}
body{
background-color:#323232;
}
h1,tr{
color:#fff;
}
.imgBox>img{
width: 300px;
height : 300px;
}
</style>
</head>
<body>
<h1 align="center">${bike.kind}의 정보</h1>
<table align="center" width="600">
	<tr bgcolor="orange">
		<td align="right">조회수 :${bike.readcount }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="bikeCartAdd.do?id=${bike.id}">장바구니 담기</a>
	</tr>
</table>

<table align="center" width="600">
	<tr>
		<td rowspan="20"><img src="./image/${bike.image }"
		style="width:160px; height:160px;"/></td>
		<br>
		<td>종류 : ${bike.kind }</td>
	</tr>
	
	<tr>
	 <td>상세정보: ${bike.spec }</td>
	</tr>
	<tr>
	 <td>가격: 
	 <fmt:formatNumber value="${bike.price }" pattern="###,##0 원"/>
	 </td>
	</tr>
	<tr>
	 <td>생산년도: ${bike.year }</td>
	</tr>
	<tr>
    <tr><td colspan="2" align="center"><a href="bikeList.do">목록보기</a></td></tr>		
</table>
</body>
</html>