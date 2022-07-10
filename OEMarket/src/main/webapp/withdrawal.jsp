<%@page import="com.ezen.market.OEM.OEMarketUserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	OEMarketUserVO uVo = new OEMarketUserVO(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
<script type="text/javascript" src="script/OEM.js"></script>
<style type="text/css">
	#withdrawal{width:350px; margin:0 auto;}
</style>
<body>
	<h1 align="center">회원 탈퇴</h1><hr>
	<form action="deleteUser.do" method="post" name="form">
		<table id="withdrawal">
			<tr>
				<td>　아이디 </td>
				<td>${uVo.id}</td>
			</tr>
			<tr>
				<td>비밀번호 </td>
				<td><input type="password" name ="pass"></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="회원 탈퇴" onclick="return passChk()">
					&nbsp;&nbsp;<button onclick="location.href='myPage.jsp'">취소</button></td>
			</tr>
		</table>
	</form>
</body>
</html>