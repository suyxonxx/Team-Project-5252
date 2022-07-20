<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style type="text/css">
	.baseTable{width:700px; margin:0 auto;}
</style>
</head>
<body>
	<h1 align="center">마이페이지</h1><hr>
	<form action="/upload.do" method="post" enctype="multipart/form-data">
		<table class="baseTable">
			<tr>
				<th colspan="3" align="left"><h2>프로필 설정</h2></th>
			</tr>
			<tr>
				<td rowspan="2">이미지</td>
				<td>닉네임</td>
				<td><input name="my_nickname" value='<c:out value="${mypage.my_nickname}"/>'></td>
			</tr>
			<tr>
				<td>자기소개</td>
				<td><textarea name="my_intro"><c:out value="${mypage.my_intro}"/></textarea></td>
			</tr>
			<tr>
				<td align="center"><input type="button" value="사진 변경"></td>
				<td colspan="2" align="right"><input type="button" value="변경사항 적용"></td>
			</tr>
		</table>
	</form>
	<br><br>
	<table class="baseTable">
		<tr>
			<th colspan="2" align="left"><h2>개인 정보 보호</h2></th>
		</tr>
		<tr>
			<td><a href="userUpdate.jsp">개인 정보 수정</a></td>
			<td><a href="withdrawal.jsp">회원 탈퇴</a></td>
		</tr>
	</table>
	<br><br>
	<table class="baseTable">
		<tr>
			<th colspan="3" align="left"><h2>활동 보기</h2></th>
		</tr>
		<tr>
			<td colspan="3">수연이 님은 2021년 10월 23일부터 오이마켓과 함께했어요.</td>
		</tr>
		<tr>
			<td>
				<table>
					<tr>
						<td>판매 횟수</td>
					</tr>
					<tr>
						<td><a href="sales.jsp">50</a></td>
					</tr>
				</table>
			</td>
			<td>
				<table>
					<tr>
						<td>구매 횟수</td>
					</tr>
					<tr>
						<td><a href="purchase.jsp">50</a></td>
					</tr>
				</table>
			</td>
			<td>
				<table>
					<tr>
						<td>찜♥ 개수</td>
					</tr>
					<tr>
						<td><a href="heart.jsp">50</a></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr><td colspan="3">※숫자를 클릭하시면, 해당 활동의 상세 목록을 조회하실 수 있습니다.</td><tr>
	</table>
	<br>
</body>
</html>