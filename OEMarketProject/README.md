
*<새 작업 진행하실 때는 항상 변경사항을 README에 작성해주세요.>

***************************************************
0722 - 정빈<작성 중>

DGVO 작성
CrawlingMapper.java 작성
CrawlingMapper.xml 작성

CrawlingMapperTests.java 작성 후 테스트 성공

- C Read U D 파트
CrawlingMapper.java 코드 추가 -> public DGVO read(int no);

CrawlingMapper.xml에 아래 코드 추가
<select id="read" resultType="com.oe.domain.DGVO">
  	select * from crawlingTest where no = #{no}
</select>

CrawlingMapperTests.java 읽기 테스트 성공

pom.xml에 jsoup 추가
CrawlingTestController.java 작성

****************************************************
0722 - 정빈

views/includes 폴더에 header.jsp와 footer.jsp 따로 나눠뒀습니다.
<%@ include file="../includes/header.jsp" %> -> header와 footer가 필요하신 페이지에
<%@ include file="../includes/footer.jsp" %> -> 이 코드들을 복붙해주시면 됩니다.

****************************************************

0722 - 기욱<작성 중>
MarketUserController 클래스 작성
MarketUserVO 클래스 작성
MarketUserMapper 인터페이스 작성
MarketUserService 인터페이스 작성
MarketUserServiceImpl 클래스 작성

MarketUserMapper.xml 작성 중

20220721 작업 결과 
	userjoin 성공 데이터베이스 등록 확인.
	인터페이스 서비스 작성
	서비스임플 구현
	컨트롤러 어노테이션 등록
	컨트롤러에서 서비스임플 사용
	매퍼.xml 에서 insert sql문 작성
	실행 오류 => 어드레스1,2,3 VO에서 수정안함. 오류잡기 성공. 디비에 넣기 성공. 집에감.


join.jsp 작성

****************************************************


0722 - 진아 - 마이페이지 유저 정보 수정 확인 중

update.jsp 작성























