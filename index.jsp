<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
<style type="text/css">
.container {
	height: 200px;
	width: 200px;
	background-color: #999;
	padding: 50px;
	margin: 100px auto;
}
</style>
</head>
<body>
<div class="container">
		<a href="bikeList.do">자전거 상품 보기</a><br>
		<a href="bikeAdd.do">상품 등록하기</a>
		<c:choose>
			<c:when test="${userid == null }">
				<a href="login.do">로그인</a>
			</c:when>
			<c:otherwise>	<br>
				${userid } 
				<c:if test="${roll=='admin' }">
					(관리자)
				</c:if>
				관리자님 환영합니다. <br>
				<a href="logout.do">로그아웃</a>
				<br>
			</c:otherwise>
		</c:choose>
		<c:if test="${roll=='admin' }">
			<a href="bikeAdd.do">관리자-Bike 상품 등록</a>
		</c:if>
	</div>


</body>
</html>