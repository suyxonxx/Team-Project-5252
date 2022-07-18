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
	<h1>판매내역</h1>
	<hr>
	<table border="1" width="100%">
		<tr>
			<td colspan="5" align="left">
				<select >
					<option selected>전체보기</option>
					<option>판매중</option>
					<option>거래완료</option>
				</select>
			</td>
		</tr>
		<tr>
			<th bgcolor="#dcdcdc" colspan="2" width="50%">상품정보</th>
			<th bgcolor="#dcdcdc" width="15%">등록일</th>
			<th bgcolor="#dcdcdc" width="10%">거래 현황</th>
			<th bgcolor="#dcdcdc" width="15%">거래 완료일</th>
		</tr>
		<!-- c:foreach 돌려서 리스트 생성 -->
		<c:forEach items="${boardList }" var="board">
		<tr>
			<td>${board.image}</td>
			<td>
				<table>
					<tr>
						<td>${board.title}</td>
					</tr>
					<tr>
						<td>${board.price}</td>
					</tr>
				</table>
			</td>
			<td>${board.bdate}</td>
			<td>거래현황</td>
			<td>거래완료일</td>
		</tr>
		</c:forEach>
	</table>
	<!--  페이지네이션 => BoardJspProject => list.jsp  -->
</center>
</body>
</html>