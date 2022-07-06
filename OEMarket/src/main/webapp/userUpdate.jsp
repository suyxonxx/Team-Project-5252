<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
                  "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script language="javascript">
	function goPopup(){
		var pop = window.open("./jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	}
	
	
	function jusoCallBack(roadAddrPart1,addrDetail,zipNo){
			document.frm.roadAddrPart1.value = roadAddrPart1;
			document.frm.addrDetail.value = addrDetail;
			document.frm.zipNo.value = zipNo;
	}
</script>
</head>
<body>
	
	<h1>회원가입</h1>
<form action="#" name="frm">
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" readonly></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pass"></td>
		</tr>
		<tr>
			<td>비밀번호 확인</td>
			<td><input type="password" name="pass_chk"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="uname"></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input type="text" name="birth"></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
				<select name="sex">
					<option value="male">남성</option>
					<option value="female" selected>여성</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>주소</td>
			<td>
				<input type="text" name="zipNo" id="zipNo" size="5" readonly="readonly">
				<input type="button" value="우편번호 찾기" onclick="goPopup()"><br>
				<input type="text" name="roadAddrPart1" id="roadAddrPart1" size="40" readonly="readonly"><br>
				<input type="text" name="addrDetail" id="addrDetail" size="40" >
			</td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name="phone"></td>
		</tr>
	</table>
	<input type="submit" value="수정">
</form>
	
</body>
</html>