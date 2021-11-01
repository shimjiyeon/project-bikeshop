<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <nav> 
    <ul class="container"> 
        <li><a class="menu" href="bikeList.do">상품</a></li>
        <li><a class="menu" href="c_boardView.do">상품 리뷰게시판</a></li>
        <li><a class="menu" href="q_boardView.do">Q&A게시판</a></li>
    
    	<li id="login" >
    		<c:if test="${sessionScope.user == null }">
			<a href="login.do" class="menu">로그인</a>
			</c:if>
				<c:if test="${sessionScope.user != null }">
				<br>${user.name }(${user.email })  님 반갑습니다. <br>
				<a href="logout.do" class="menu">로그아웃</a>
			</c:if>
    	</li>
    </ul>
    </nav>