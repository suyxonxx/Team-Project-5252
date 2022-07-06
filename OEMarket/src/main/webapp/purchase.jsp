<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
                  "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<h1>구매내역</h1>
	<hr>
	<table border="1" width="100%">
		<tr>
			<th bgcolor="#dcdcdc" colspan="2" width="50%">상품정보</th>
			<th bgcolor="#dcdcdc" width="20%">판매자</th>
			<th bgcolor="#dcdcdc" width="20%">거래 완료일</th>
		</tr>
		<!-- c:foreach 돌려서 리스트 생성 -->
		<c:forEach items="${boardList }" var="board">
		<tr>
			<td><input type="text" name="image" value="${board.image}"></td>
			<td>
				<table>
					<tr>
						<td><input type="text" name="title" value="${board.title}"></td>
					</tr>
					<tr>
						<td><input type="text" name="price" value="${board.price}"></td>
					</tr>
				</table>
			</td>
			<%-- <td><input type="text" name="거래완료일" value="${board.거래완료일}"></td> --%>
			<td><input type="text" name="거래완료일" value="거래완료일"></td>
		</tr>
		</c:forEach>
	</table>
</center>
</body>
</html>