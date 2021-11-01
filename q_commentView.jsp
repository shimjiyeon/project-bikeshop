<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>QnA 글쓰기</title>
<script type="text/javascript">
function post_data() {
	frm1.submit();
}
</script>
<link rel="stylesheet" href="../css/temp.css?v=3">
</head>
<body>

<h3>QnA 글쓰기</h3>
<hr>
<form name="frm1" method="post" action="Action.jsp">
 <table>
 	<tr><th>제목</th>
 		<td><input type="text" name="subject" size="40" required></td>
 	</tr>
 	<tr>
		<th>작성자</th>
 		<td>
 		<input type="text" name="name" size="20" readonly value="${sessionScope.user.name }">
 		</td>
 	</tr>
 	<tr><th>글 비밀번호</th>
 		<td><input type="password" name="password" required></td>
 	<tr><th>이미지첨부</th>
 		<td><input name="image" type="file"accept="image/*"  ></td>
 	</tr>
 	<tr><th>내용</th>  
 		<td><textarea  rows="20" cols="80" name="content" required></textarea></td>
 	</tr>
 	<tr><td colspan="2" align="center">
 	<input type="submit" value="저장" class="btn" >
 	<input type="reset"  value="다시쓰기" class="btn">
 	<input type="button" value="목록" onclick="location.href='q_boardView.jsp'" class="btn">
 	</td></tr>
 </table>
 </form>
</body>
</html>




