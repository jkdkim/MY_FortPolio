<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>PUPU-회원 정보등록</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<style>
#pu{
  color:#D0F5A9;

}
#pu2{
  color:#6E6E6E ;
}
#js1{
  color:#FFFFFF;
}
#port1{
 color:#FFFFFF ;
}

</style>	
	
	

<form action="/member/join">
	<!-- Top content -->
	<div class="top-content">

		<div class="inner-bg">
			<div class="container">
				<div class="row">
					<div class="col-sm-7 text" >
						<h1 id="pu">
							<strong>PUPU</strong> Registration Form
						</h1>
						<div class="description" >
							<p id="pu2">
								<b>Whatever you want!<b></b><br /> <input type="checkbox"  id="check"><strong><a
									id="js1" style="float: center;">서비스 이용약관, 개인 정보 수집 이용의
										동의합니다.</a></strong>
							</p>
						</div>
						<script>
							$("#check").change(function() {
								$("#port1").fadeToggle();
							});
									$("#js1").click(function() {
										$("#port1").fadeToggle();
									});
								</script>
						<div style="height: 600; display: none;" id="port1">
							<a>제 1 조 (목적)</a>
							<p>이 약관은 네이버 주식회사 ("회사" 또는 "네이버")가 제공하는 네이버 및 네이버 관련 제반 서비스의
								이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</p>
							<h3>
								<a>제 2 조 (정의)</a>

							</h3>
							<p>이 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
							<ol>
								<li><span class="first_letter">①</span>"서비스"라 함은 구현되는
									단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 "회원"이 이용할 수 있는 네이버 및
									네이버 관련 제반 서비스를 의미합니다.</li>
								<li><span class="first_letter">②</span>"회원"이라 함은 회사의 "서비스"에
									접속하여 이 약관에 따라 "회사"와 이용계약을 체결하고 "회사"가 제공하는 "서비스"를 이용하는 고객을 말합니다.</li>

								<li><span class="first_letter">③</span>"아이디(ID)"라 함은 "회원"의
									식별과 "서비스" 이용을 위하여 "회원"이 정하고 "회사"가 승인하는 문자와 숫자의 조합을 의미합니다.</li>
								<li><span class="first_letter">④</span>"비밀번호"라 함은 "회원"이 부여
									받은 "아이디와 일치되는 "회원"임을 확인하고 비밀보호를 위해 "회원" 자신이 정한 문자 또는 숫자의 조합을
									의미합니다.</li>

								<li><span class="first_letter">⑤</span>"유료서비스"라 함은 "회사"가
									유료로 제공하는 각종 온라인디지털콘텐츠(각종 정보콘텐츠, VOD, 아이템 기타 유료콘텐츠를 포함) 및 제반
									서비스를 의미합니다.</li>
								<li><span class="first_letter">⑥</span>"포인트"라 함은 서비스의 효율적
									이용을 위해 회사가 임의로 책정 또는 지급, 조정할 수 있는 재산적 가치가 없는 "서비스" 상의 가상 데이터를
									의미합니다.</li>
								<li><span class="first_letter">⑦</span>"게시물"이라 함은 "회원"이
									"서비스"를 이용함에 있어 "서비스상"에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진,
									동영상 및 각종 파일과 링크 등을 의미합니다.</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>