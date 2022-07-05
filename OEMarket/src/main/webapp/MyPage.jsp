<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style type="text/css">
	.baseTable{width:700px;}
</style>
</head>
<body>
	<h1>마이페이지</h1>
	<table class="baseTable">
		<tr>
			<th colspan="3" align="left">프로필 설정</th>
		</tr>
		<tr>
			<td rowspan="2">이미지</td>
			<td>닉네임</td>
			<td><input type="text" value="내용을 입력해주세요."></td>
		</tr>
		<tr>
			<td>자기소개</td>
			<td><textarea></textarea></td>
		</tr>
		<tr>
			<td align="center"><input type="button" value="사진 변경"></td>
			<td colspan="2" align="right"><input type="button" value="변경사항 적용"></td>
		</tr>
	</table>
	<br><br>
	<h1>개인 정보 보호</h1>
	<table class="baseTable">
		<tr>
			<td><a href="#">개인 정보 수정</a></td>
			<td><a href="#">소셜 활동 내역 확인</a></td>
		</tr>
	</table>
	<br><br>
	<h1>활동 보기</h1>
	<table class="baseTable">
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
						<td><a href="#">50</a></td>
					</tr>
				</table>
			</td>
			<td>
				<table>
					<tr>
						<td>구매 횟수</td>
					</tr>
					<tr>
						<td><a href="#">50</a></td>
					</tr>
				</table>
			</td>
			<td>
				<table>
					<tr>
						<td>찜♥ 개수</td>
					</tr>
					<tr>
						<td><a href="#">50</a></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr><td colspan="3">※숫자를 클릭하시면, 해당 활동의 상세 목록을 조회하실 수 있습니다.</td><tr>
	</table>
	<br>
	<table>
		<tr><td><a href="#">회원탈퇴</a></td></tr>
	</table>
</body>
</html>