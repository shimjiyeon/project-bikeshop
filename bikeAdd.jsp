<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 - 상품관리</title>
<style>
	input {
		padding : 6px;
	}
</style>
</head>
<body>
<section>
<!--  <c:if test="${sessionScope.uid==null }">
	<script type="text/javascript">
		alert('관리자 접근 페이지입니다.');
		location.href='login.do';   //community 폴더 위로 이동한 위치의 loginView.jsp
	</script>
</c:if>  -->

<h3 style="text-align: center;">관리자 - Bike 상품 등록</h3>
<form action="bikeAddOk.do" method="post" enctype="multipart/form-data">
<table>
	<tr>
		<td>모델명</td>
		<td><input name="kind"></td>
	</tr>	
	<tr>
		<td>상품이미지</td>
		<td><input name="image" type="file" accept="image/*"></td>
	</tr>
	<tr>
		<td>생산년도</td>
		<td><input type="number" name="year" required="required"></td>
	</tr>
	<tr>
		<td>상품가격</td>
		<td><input type="number" name="price" required="required"></td>
	</tr>
	<tr>
		<td>상품정보</td>
		<td><textarea rows="7" cols="70" name="spec"></textarea></td>
	</tr>
	<tr>
	<td colspan="2">
		<input type="submit" value="저장">
		<input type="reset" value="다시쓰기">
		<input type="button" value="메인으로">
	</td>
	</tr>
</table>
</form>


</section>
</body>
</html>



