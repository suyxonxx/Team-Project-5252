<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<script language="javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";

function goPopup(){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	var pop = window.open("/popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}


function jusoCallBack(sggNm,emdNm){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
	
		document.form.sggNm.value = sggNm;
		document.form.emdNm.value = emdNm;
		
		
}

</script>
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
                <td colspan="2"><input type="text" placeholder="YYYYMMDD" 
                onfocus="this.placeholder=''" onblur="this.placeholder='YYYYMMDD'"
             	name="us_birth" size="35"></td>
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
                    <input type="text" name="us_address1" id="sggNm" size="8"  readonly>
                	<input type="text" name="us_address2" id="emdNm" size="8"  readonly>
                    <input type="button" onClick="goPopup();" value="동네찾기"/>
                </td>
            </tr>
            <tr>
                <th>전화번호</th>
                <td><input type="text" name="us_phone" size="35"
                 placeholder="010-0000-0000" onfocus="this.placeholder=''" onblur="this.placeholder='010-0000-0000'"></td>
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


