<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>PUPU-회원가입</title>
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

#pu3{
  color: #FFFFFF;


}

.buttonT {
    background-color: #04B404; /* Green */
    border: none;
    color: white;
    padding: 10px 28px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    margin: 4px 2px;
    cursor: pointer;
}
.button1 {
    background-color:transparent; 
    color: black; 
    border: 2px solid #EDBA88;
}

.button1:hover {
    background-color:#313413;
    color: white;
}


</style>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
	<!-- Top content -->
	<div class="top-content">
		<div class="inner-bg">
			<div class="container">
				<div class="row">
					<div class="col-sm-5 form-box">
						<div class="form-top">
							<div class="form-top-left" id="pu3">
								<h3 >회원 가입</h3>
								<p >아래 회원 양식을 작성해 주세요:</p>
							</div>
							<div class="form-top-right">
								<i class="fa fa-pencil"></i>
							</div>
						</div>
						<div class="form-group has-success has-feedback" >
							<form action="/member/join" method="post"
								class="registration-form">
								<p class="form-group">
									<label class="sr-only" for="id">ID</label> <input type="text"
										name="id" placeholder="ID" class="form-control" aria-describedby="inputError2Status"
										id="id" > <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
                                                <span id="inputSuccess5Status" class="sr-only">(success)</span> 
										<span id="rst"></span>
								</p>
								<p class="form-group">
									<label class="sr-only" for="id">PASS</label> <input
										type="password" name="pass" placeholder="PASSWORD"
										class="form-last-name form-control" id="pass">
								</p>
								<p class="form-group">
									<label class="sr-only" for="id">REPASS</label> <input
										type="password" placeholder="REPASSWORD"
										class="form-last-name form-control" id="pass2"> <span
										id="rst1"></span>
								</p>
								<p class="form-group">
									<label class="sr-only" for="name">이름</label> <input type="text"
										name="name" placeholder="NAME"
										class="form-first-name form-control" id="name">
								</p>
								<p class="form-group">
									<label class="sr-only" for="email">Email</label> <input
										type="text" name="email" placeholder="EMAIL"
										class="form-email form-control" id="emailId">
								</p>
								<p class="form-group" id="email_auth" style="display: none">
									<label class="sr-only" for="email">인증번호</label> <input
										type="text" placeholder="발송받은 인증번호"
										class="form-email form-control" id="auth2"> <span
										id="Auth"></span> <input type="button" value="인증 확인" id="mail" />
								</p>
								<p class="form-group">
									<label class="sr-only" for="form-last-name">address</label> <input
										type="text" name="address" placeholder="ADDRESS"
										class="form-last-name form-control" id="address">
								</p>
								<p class="form-group">
									<label class="sr-only" for="phone">phone</label> <input
										type="text" name="phone" placeholder="PHONE(-없이 입력)"
										class="form-last-name form-control" id="phone">
										<span
										id="rst2"></span>
								</p>
								<p class="form-group" >
									<label class="sr-only" for="birth">birth</label> <input
										type="text" name="birth" placeholder="BIRTH"
										class="form-last-name form-control" id="birth">
								</p>
								<p class="form-group">
									<label class="sr-only" for="gender">gender</label> <select
										id="gender" name="gender" class="form-last-name form-control">
										<option value="">GENDER</option>
										<option value="여성" >여성</option>
										<option value="남성" >남성</option>
										<option value="OTHER">기타</option>
									</select>

								</p>
								<p class="form-group">
								<label class="sr-only" for="interest">interest</label> <select
										id="interest" name="interest" class="form-last-name form-control">
										<option value="">INTEREST</option>
										<option value="의류">의류</option>
										<option value="여행">여행</option>
										<option value="취미">취미</option>
										<option value="자유">자유</option>
									</select>
								</p>
								<button type="submit" class="buttonT button1" id="join" style="color: white;">
								회원가입</button>
								<button type="reset" class="buttonT button1" style="color: white;" >
								다시작성</button>
							
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<script>
// 중복아이디체크
var regExp = /\s/g;
var pattern = /[^\w\s]/i;
var textw = "text-warnig";
var textp = "text-primary";
$(document).ready(function () {
	/**/
	$('#birth').datepicker();
	$("#join").mousedown(function() {
		var a = $("#id").val();
		var b = $("#pass").val();
		var c = $("#name").val();
		var d = $("#emailId").val();
		var e = $("#address").val();
		var f = $("#phone").val();
		var g = $("#birth").val();
		var h = $("#gender").val();
		var i = $("#interest").val();
		var j = $("#mail").val();
		if(!a || !b || !c || !d || !e || !f || !g || !h || !i || !j) {
			alert('회원가입정보를 모두 입력해주세요.');
			$("#join").attr("disabled",true);
			location.reload();
		}else {
			$("#join").attr("disabled", false);
		}
	});
	$("#id").blur(function() {
		var id = $("#id").val();
		if(id == "" || id == null || id == undefined || ( id != null && typeof id == "object" && !Object.keys(id).length )) {
			$("#rst").html('<p class='+textw+'>아이디를 입력해 주세요.</p>');
		} else {
			var reg =  /^[A-Za-z0-9]{4,10}$/;
			if(!reg.test($("#id").val())) {
				$("#rst").html('<p class='+textw+'>ID는 영문 또는 숫자 4~10자리로 설정해주세요.</P>');
			} else {
				if(!regExp.test($("#id").val())) {
					if(!pattern.test($("#id").val())) {
						$.ajax({
							'url':'/member/joinAjax?id='+id,
							'methode':'get'
						}).done(function(rst){
							if(rst=="TRUE") {
								$("#rst").html('<p class='+textw+'>이미 사용중인 아이디 입니다.</p>');
							}else if(rst=="FALSE") {
								$("#rst").html('<p class='+textp+'>사용가능한 아이디 입니다.</p>');
							}else {
								$("#rst").html('<p class='+textw+'>아이디 입력 필수</p>');
							}
						});			
					}
				}
			}
		}
	});
	// 패스워드 일치 검사
	
	$("#pass").blur(function() {
		var reg =  /^[A-Za-z0-9]{4,10}$/;
		if(pass == "" || pass == null || pass == undefined || ( pass != null && typeof pass == "object" && !Object.keys(pass).length )) {
			$("#rst1").html('<p class='+textw+'>패스워드를 입력해주세요.</P>');	
		} else {
			if(!reg.test($("#pass").val())) {
				$("#rst1").html('<p class='+textw+'>PW는 영문숫자조합 4~10자리로 설정해주세요.</P>');
			} else {
				if(!regExp.test($("#pass").val())) {
					if(!pattern.test($("#pass").val())) {
						$("#rst1").html('<p class='+textp+'>안전한 비밀번호입니다.</P>');
						$("#pass2").blur(function() {
							var pass2 = $("#pass2").val();
							var pass = $("#pass").val();
							if(pass == "" || pass == null || pass == undefined || ( pass != null && typeof pass == "object" && !Object.keys(pass).length ) 
									|| pass2 == "" || pass2 == null || pass2 == undefined || ( pass2 != null && typeof pass2 == "object" && !Object.keys(pass2).length ) ) {
								$("#rst1").html('<p class='+textw+'>패스워드를 입력해주세요.</P>');	
							} else if (pass != pass2) {
								$("#rst1").html('<p class='+textw+'>패스워드가 일치하지 않습니다.</P>');
							} else if(pass==pass2) {
								$("#rst1").html('<p class='+textp+'>패스워드가 일치 합니다.</p>');
							} else {
								$("#rst1").html('<p class='+textw+'>서버와의 연결상태가 원활하지 않습니다. 재접속해주시기 바랍니다.</p>');
							}
						});	
					}	
				}
			}	
		}
	});
	
	// 휴대폰번호형식 검사
	$("#phone").blur(function() {
		var regPhone = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
		if(!regPhone.test($("#phone").val())) {
			$("#rst2").html('<p class='+textw+'>형식에 맞게 작성해주세요.</p>');
		} else {
			$("#rst2").hide();
		}
	});
	
	// 이메일형식검사
	$("#emailId").change(function() {
		var reg = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;
		if(reg.test($("#emailId").val())) {
			var v = $("#emailId").val();
			$.ajax({
				"url":"/member/joinAjax2?email="+v,
				"methode":"get"
			}).done(function(rst) {
				if(rst!=null) {
					window.alert("인증코드가 전송되었습니다.");
					$("#email_auth").show();
					$("#mail").click(function() {
						var v1 = $("#auth2").val();
						if(rst==v1) {
							window.alert("정상인증처리되었습니다.");
							$("#email_auth").hide();
						} else {
							window.alert("정상인증처리되지않았습니다.인증코드를 다시 확인해주세요.");
						}
					})
				} else {
					window.alert("인증코드 발송에 실패하였습니다.");
				}
			})
		} else {
			$("#email_auth").hide();
			$("#rst3").html('<p class='+textw+'>이메일 주소 형식에 맞지 않습니다.</p>');
		}
	})
});
</script>