<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>찜 목록</title>
<style type="text/css">
	.baseTable{width:700px; margin:0 auto;}
</style>
</head>
<body>
	<h1 align="center">찜 목록</h1><hr>
	<table class="baseTable">
		<tr>
			<td align="left">
				<select >
					<option selected>전체보기</option>
					<option>판매중</option>
					<option>거래완료</option>
				</select>
			</td>
		</tr>
	</table>
	<!-- 한 페이지당 4×5로 구현 예정 -->
	<c:forEach items="${boardList}" var="board">
		<c:if test=""><!-- 20n 이하일 때 -->
			<table class="baseTable">
				<c:if test=""><!-- 4n 이하일 때 -->
					<tr>
						<c:forEach items="" var="">
							<td></td>
						</c:forEach>
					</tr>
				</c:if>
			</table>
		</c:if>
		<div class="container" align="center">
			<ul class="pagination">
				<li><a href="#">1</a></li>
				<li class="active"><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
			</ul>
		</div>
	</c:forEach>
</body>
</html>