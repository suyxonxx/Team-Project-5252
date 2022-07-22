<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<link rel="stylesheet" href="assets/css/basic.css">

<!-- <script type="text/javascript" src="script/OEM.js"></script> -->

</head>
<body>


	<div align="center">
        <form action="/user/join" method="post" name="form">
        <h1>회원가입</h1>
        <table >
            <tr>
                <th>아이디</th>
                <td><input type="text" name="us_id" size="35"></td>
                <td><input type="button" value="중복체크" name="${uVo.id}" onclick="return idChk()"></td>
            </tr>
            <tr>
                <th>비밀번호</th>
                <td colspan="2"><input type="password" name="us_pass" size="35"></td>
            </tr>
            <tr>
                <th>비밀번호 확인</th>
                <td colspan="2"><input type="password" name="passchk" size="35"></td>
            </tr>
            <tr>
                <th>이름</th>
                <td colspan="2"><input type="text" name="us_name" size="35"></td>
            </tr>
            <tr>
                <th>별명</th>
                <td colspan="2"><input type="text" name="us_nickname" size="35"></td>
            </tr>
            <tr>
                <th>생년 월일</th>
                <td colspan="2"><input type="text" name="us_birth" size="35"></td>
            </tr>
            <tr>
                <th>메일주소</th>
                <td colspan="2"><input type="text" name="us_email" size="35"></td>
            </tr>
            <tr>
                <th>성별</th>
                <td colspan="2">
                    <select name="us_gender">
                        <option value="male">남성</option>
                        <option value="female">여성</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>주소</th>
                <td colspan="2">
                    <input type="text" name="us_address1" value="#" size="8"  readonly>
                    <input type="button" value="우편번호 찾기" onclick="addressChk()" >
                </td>
            </tr>
            <tr>
                <td colspan="3" align="center" style="padding-left: 33px; " >
                <input type="text" name="us_address2" value="#" size="35"  readonly></td>
            </tr>
            <tr>
                <td colspan="3" align="center" style="padding-left: 33px; ">
                <input type="text" name="us_address3" size="35"></td>
            </tr>
            <tr>
                <th>전화번호</th>
                <td><input type="text" name="us_phone" size="35"></td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <input type="submit" value="가입하기" onclick="return CreateAccountCheck()">
                    <input type="button" value="목록으로" onclick="location.href='boardList.do'">
                </td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <input type="button" value="홈화면으로" onclick="location.href='index.jsp'">
                </td>
            </tr>
        </table>
        </form>
    </div>

</body>
</html>