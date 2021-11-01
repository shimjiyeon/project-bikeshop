<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="css/boardlist.css?v=3">
<link rel="stylesheet" href="css/flexbox2.css?v=3">
</head>
<body>
<section>
<hr>
<div style="margin:auto;">
<ul id="main">
	<li>
		<ul  class="row">
			<li>상품 번호</li>
			<li>NEW상품</li>
			<li>상품</li>
			<li>리뷰게시판</li>
			<li>QnA게시판</li>
			
			
		</ul>
	</li>


	</ul>
	</div>

<div style="margin:auto;">
 	Go!<a class="button" href="insert.do">글쓰기</a>&nbsp;&nbsp;
 	<a class="button" href="${pageContext.request.contextPath }">홈 : ${pageContext.request.contextPath }
 	</a>&nbsp;&nbsp;&nbsp;작성글 총 개수 : ${pageDto.totalCount }
</div>
<div style="text-align: center;">
<hr>

	<c:if test="${pageDto.startPage !=1 }">
		<a class="pagenum" href="?page=1">&lt;&lt;</a>
		<a class="pagenum" href="?page=${pageDto.startPage-1}">&lt;</a>  
	</c:if>
	
	<c:forEach var="i" begin="${pageDto.startPage }" end="${pageDto.endPage }">
		<a class="pagenum  
			<c:if test="${pageDto.currentPage == i }">current</c:if>
		" href="?page=${i }">${i }</a>
	</c:forEach>
	
	<c:if test="${pageDto.endPage !=pageDto.totalPage }">
		<a class="pagenum" href="?page=${pageDto.endPage+1}">&gt;</a> 	 
		<a class="pagenum" href="?page=${pageDto.totalPage }">&gt;&gt;</a>  
	</c:if>
</div>	
	
</div>
</section>
<%@ include file="../bottom.jsp" %>
</body>
</html>





