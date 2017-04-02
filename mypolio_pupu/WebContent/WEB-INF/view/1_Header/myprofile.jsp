<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Profile -->
<c:forEach var="obj" items="${profile }">
	<div class="w3-card-2 w3-round w3-white" align="center">
		<div class="w3-container">
			<h4 class="w3-center">My Profile</h4>
			<p class="w3-center">
			<p id="view"></p>
		
				<img src=""
					class="w3-circle" style="height: 200px; width: 200px" id="image">
			
		       <br/> 
		       <br/>
         <table style="width: 248px;" border="1" align="center" id="ta1">
            <tbody>
               <tr>
                  <td style="width: 73px;" align="center"><b>이름</b></td>
                  <td style="width: 171px;" align="left">${obj.get("NAME") }</td>
               </tr>
               <tr>
                  <td style="width: 73px;" align="center"><b>생년월일</b></td>
                  <td style="width: 171px;" align="left">${obj.get("BIRTH") }</td>
               </tr>
               <tr>
                  <td style="width: 73px;" align="center"><b>성별</b></td>
                  <td style="width: 171px;" align="left">${obj.get("GENDER") }</td>
               </tr>
               <tr>
                  <td style="width: 73px;" align="center"><b>핸드폰</b></td>
                  <td style="width: 171px;" align="left">${obj.get("PHONE") }</td>
               </tr>
               <tr>
                  <td style="width: 73px;" align="center"><b>주소</b></td>
                  <td style="width: 171px;" align="left">${obj.get("ADDRESS") }</td>
               </tr>
            </tbody>
         </table>
			
			<form  action="/profileupload" enctype="multipart/form-data" method="post" id="up_file">
			<div class="filebox bs3-primary preview-image">
				<input class="upload-name" value="파일선택" disabled="disabled"
				style="width: 200px;"> <label for="input_file">선택</label>
				<input type="file" id="input_file" name="file" class="upload-hidden">
			</div>
			<button type="submit" id="saveProfile" >프로필사진지정하기</button>
			</form><br/>
		<div align="center" id="imfo2" style="display: none;" class="form-group">
			<input type="text" id="name" class="form-control"  placeholder="이름"><br />
				<input type="text" id="birth" class="form-control" placeholder="생년월일" ><br />
				 <input type="text" id="gender" class="form-control" placeholder="성별"><br />
				<input type="text" id="phone" class="form-control" placeholder="휴대폰번호"><br />
				<input type="text" id="address" class="form-control" placeholder="주소"><br />
			<input type="password" id="pass" class="form-control" placeholder="비밀번호"><br />
		</div>
			<ul id="checkpass" style="display: none;">
				<li>현재 비밀번호를 입력해주세요. <br /> <input type="password" id="check"></li>
			</ul>
			<input type="button" id="bt1" value="수정하기"> <input
				type="button" id="bt2" value="수정신청"  style="display: none;">
		</div>
	</div>
</c:forEach>
<br>
<script>
$(document).ready(function() {
	$("#up_file").hide();
	$.ajax({
		"url":"/profileSet",
		"methode":"get"
	}).done(function(rst){
		if(rst!="") {
			$("#image").attr("src", "/profilefolder/"+rst);
		
		}
	})
});

	$("#bt1").click(function() {
		$("#checkpass").show();
	});

	$("#check").change(function() {
		$.ajax({
			"url" : "/checkpass?check=" + $("#check").val(),
			"methode" : "get"
		}).done(function(rst) {
			if (rst == "true") {
				alert("비밀번호가 일치합니다.");
				$("#checkpass").hide();
				$("#bt1").hide();
				$("#bt2").show();
				$("#ta1").hide();
				$("#up_file").show();
				$("#imfo2").show();
				$("#imfo").hide();
	
			} else {
				alert("비밀번호를 확인해주세요.");
				$("#check").val("");
			}
		});
	});
	$("#bt2").click(
			function() {
				var name = $("#name").val();
				var birth = $("#birth").val();
				var gender = $("#gender").val();
				var phone = $("#phone").val();
				var address = $("#address").val();
				var pass = $("#pass").val();

				$.ajax(
						{
							"url" : "/modify?name=" + name + "&birth=" + birth
									+ "&gender=" + gender + "&phone=" + phone
									+ "&address=" + address + "&pass=" + pass,
							"methode" : "get"
						}).done(function(rst) {
					alert(rst);
					if (rst == "TRUE") {
						alert("정상처리 되었습니다.");
						location.reload();
					} else {
						alert("서버와 연결이 끈킴");
					}
				});
			});
</script>
<script type="text/javascript">
var imgTarget = $('.preview-image .upload-hidden');

imgTarget.on('change', function(){
    var parent = $(this).parent();
    parent.children('.upload-display').remove();

    if(window.FileReader){
        //image 파일만
        if (!$(this)[0].files[0].type.match(/image\//)) return;
        
        var reader = new FileReader();
        reader.onload = function(e){
            var src = e.target.result;
            parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
        }
        reader.readAsDataURL($(this)[0].files[0]);
    }

    else {
        $(this)[0].select();
        $(this)[0].blur();
        var imgSrc = document.selection.createRange().text;
        parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

        var img = $(this).siblings('.upload-display').find('img');
        img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
    }
});
</script>

