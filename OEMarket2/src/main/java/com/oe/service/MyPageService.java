package com.oe.service;

import com.oe.domain.MyPageVO;

public interface MyPageService {
	/*	
	 *	<마이페이지 초기값 설정>
	 *	프로필 사진 : 웹페이지의 noimage.gif와 같이 기본 이미지 파일을 지정 후, 이를 초기값으로 부여
	 *	닉네임 : OE_G8S93G, OE_SA356H 등과 같이 특정 단어 + 일련번호(영문 + 숫자 조합)를 초기값으로 부여
	 *	자기소개 : "자기소개를 입력해주세요." 문구를 초기값으로 부여
	 */
	public MyPageVO mypageMain(String my_id); //해당 id를 갖는 회원의 프로필 정보 보기
	public int myImgUpload(MyPageVO vo); //프로필 사진 업로드 (초기이미지 or 이전이미지 -> 새 이미지로 수정)
	public int profileEdit(MyPageVO vo);//닉네임, 자기소개 수정
}
