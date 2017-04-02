<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 기본 템플릿을 작성! -->
<meta http-equiv="refresh" content="15; " />
<style>
html, body, h1, h2, h3, h4, h5 {	
	font-family: "Open Sans", sans-serif
}

* {
	margin: 0;
	padding: 0
}

body {
	font-family: 'Open Sans', arial, sans-serif;
}

li {
	list-style: none;
}

a {
	text-decoration: none;
}

#pn {
	color: #5882FA;
}

#port {
	padding: 10px;
}

#ment {
	padding: 0px;
}

.button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 5px 10px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 13px;
	margin: 3px 2px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
}

.button4 {
	background-color: white;
	color: #0000FF;
	border: 2px solid #0000FF;
	border-radius: 5px
}

.button5 {
	background-color: white;
	color: black;
	border: 2px solid #555555;
	border-radius: 5px
}

.button5:hover {
	background-color: #555555;
	color: white;
}

.button_warning {
	background-color: white;
	color: black;
	border: 2px solid #555555;
	border-radius: 5px
}

.button_warning:hover {
	background-color: #FE2E2E;
	color: white;
}

.button4:hover {
	color: white;
	background-color: #0000FF;
}

#modal_img {
	height: auto;
	width: 400px;
	padding: 20px;
}

.font_right {
	text-align: right;
}

.font_big {
	font-size: 10px;
}

.font_color {
	color: #5882FA;
}

.user_color {
	color: #4B088A;
}

#port1 {
	padding: 5px;
	height: auto;
	width: 400px;
	text-align: center;
	border: solid 1px #c3c3c3;
}

.text_box {
	padding: 0px;
	height: 100px;
	width: 300px;
	text-align: center;
	border: solid 1px #c3c3c3;
}

input[type="text"] {
	margin: 5px;
	padding: 5px;
	width: 300px;
	height: 30px;
}

.logo {
	
}

#top_view {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	padding: 10px;
	height: 100px;
	width: 200px;
	margin: 10px;
	font-size: 50px;
}

#featured {
	position: fixed;
	top: -25;
	left: 0;
	right: 0;
	padding: 15px;
	margin-top: -60PX;
}

.position {
	top: -25;
	left: 0;
	right: 0;
}

.p_positon {
	padding: 20px
}

#wrap {
	
}

#wrap>#main_lab {
	float: left;
	width: 500px
}

#wrap>#content_wrap {
	float: right;
	width: 100%;
	margin-right: -430px
}

#main_lab {
	position: fixed;
	top: 100px;
	bottom: 50px;
	left: 0;
	width: 400px;
	margin: 0px;
	padding: 0px;
}

#content_wrap {
	width: 400px;
}

#wrap>#content_wrap>#content {
	padding-right: 500px;
}

.modal-dialog.modal-80size {
	width: 90%;
	height: 90%;
	margin: 0;
	padding: 0;
}

.modal-content.modal-80size {
	height: auto;
	min-height: 90%;
}

.modal.modal-center {
	text-align: center;
}

@media screen and (min-width: 768px) {
	.modal.modal-center:before {
		display: inline-block;
		vertical-align: middle;
		content: " ";
		height: 100%;
	}
}

.modal-dialog.modal-center {
	display: inline-block;
	text-align: left;
	vertical-align: middle;
}

.filebox input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.filebox label {
	display: inline-block;
	padding: .5em .75em;
	color: #999;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #fdfdfd;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
}

/* named upload */
.filebox .upload-name {
	display: inline-block;
	padding: .5em .75em; /* label의 패딩값과 일치 */
	font-size: inherit;
	font-family: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #f5f5f5;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
}

.filebox .upload-display { /* 이미지가 표시될 지역 */
	margin-bottom: 5px;
}

@media ( min-width : 768px) {
	.filebox .upload-display {
		display: inline-block;
		margin-right: 5px;
		margin-bottom: 0;
	}
}

.filebox .upload-thumb-wrap { /* 추가될 이미지를 감싸는 요소 */
	display: inline-block;
	width: 54px;
	padding: 2px;
	vertical-align: middle;
	border: 1px solid #ddd;
	border-radius: 5px;
	background-color: #fff;
}

.filebox .upload-display img { /* 추가될 이미지 */
	display: block;
	max-width: 100%;
	width: 100% \9;
	height: auto;
}
</style>
<c:choose>
	<c:when test="${size eq -1 }">
		<div class="w3-row-padding">
			<div class="w3-col m12">
				<div class="w3-card-2 w3-round w3-white">
					<div class="w3-container w3-padding" id="upload">
						<img src="/profilefolder/${uid }" alt="Avatar"
							class="w3-left w3-circle w3-margin-right" style="width: 60px">
						<h6 class="w3-opacity">
							<a>${nickname}</a>(${userId})님<span id="sever_conection"></span>
							<input type="hidden" value="${userId }" id="userid">
						</h6>
						<textarea class="form-control" id="usrname"
							placeholder="무슨 생각을 하고 있나요~?" name="comments"
							style="border: none;"></textarea>
						<button type="button" class="button button5">
							<i class="glyphicon glyphicon-picture"></i>  사진첨부
						</button>
						<button type="button" class="button button5">
							<i class="glyphicon glyphicon-save"></i>  올리기
						</button>
					</div>
				</div>
			</div>
		</div>
			<form role="form" action="/file/upload" method="post"
			enctype="multipart/form-data">
			<div class="container">
				<!-- Modal -->
				<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-body" style="padding: 40px 50px;">
								<div class="w3-container w3-padding" id="upload">
									<img src="/profilefolder/${uid }" alt="Avatar"
										class="w3-left w3-circle w3-margin-right" style="width: 60px">
									<h6 class="w3-opacity">
										<a>${nickname}</a>(${userId})님
									</h6>
									<textarea class="form-control" id="usrname"
										placeholder="무슨 생각을 하고 있나요~?" name="comments"
										style="border: none;"></textarea>
								</div>
								<p class="form-group">
									<select name="cate" class="form-last-name form-control">
									<option value="의류">의류</option>
									<option value="여행">여행</option>
									<option value="취미">취미</option>
									<option value="자유">자유</option>
									</select>

								</p>
								<div class="filebox bs3-primary preview-image">
									<input class="upload-name" value="파일선택" disabled="disabled"
										style="width: 200px;"> <label for="input_file">선택</label>
									<input type="file" id="input_file" name="file" class="upload-hidden">
								</div>

								<pre id="list1"
									style="height: 220px; width: 220px; background-color: white; border: none;"></pre>
								<div class="modal-footer">
									<button type="submit" class="btn button button5" id="F_upload">
										<span class="glyphicon glyphicon-off"></span> 업로드
									</button>
									<span></span>
									<button type="submit" class="btn button button_warning  "
										data-dismiss="modal">
										<span class="glyphicon glyphicon-remove"></span> Cancel
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</c:when>
	<c:otherwise>
		<div class="w3-row-padding">
			<div class="w3-col m12">
				<div class="w3-card-2 w3-round w3-white">
					<div class="w3-container w3-padding" id="upload">
						<img src="/profilefolder/${uid }" alt="Avatar"
							class="w3-left w3-circle w3-margin-right" style="width: 60px">
						<h6 class="w3-opacity">
						<input type="hidden" value="${userId }" id="userid">
							<a>${nickname}</a>(${userId})님<span id="sever_conection"></span>
						</h6>
						<textarea class="form-control" id="usrname"
							placeholder="무슨 생각을 하고 있나요~?" name="comments"
							style="border: none;"></textarea>
						<button type="button" class="button button5">
							<i class="glyphicon glyphicon-picture"></i>  사진첨부
						</button>
						<button type="button" class="button button5">
							<i class="glyphicon glyphicon-save"></i>  올리기
						</button>
					</div>
				</div>
			</div>
		</div>
		<form role="form" action="/file/upload" method="post"
			enctype="multipart/form-data">
			<div class="container">
				<!-- Modal -->
				<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-body" style="padding: 40px 50px;">
								<div class="w3-container w3-padding" id="upload">
									<img src="/profilefolder/${uid }" alt="Avatar"
										class="w3-left w3-circle w3-margin-right" style="width: 60px">
									<h6 class="w3-opacity">
										<a>${nickname}</a>(${userId})님
									</h6>
									<textarea class="form-control" id="usrname"
										placeholder="무슨 생각을 하고 있나요~?" name="comments"
										style="border: none;"></textarea>
								</div>
								<p class="form-group">
									<select name="cate" class="form-last-name form-control">
									<option value="의류">의류</option>
									<option value="여행">여행</option>
									<option value="취미">취미</option>
									<option value="자유">자유</option>
									</select>

								</p>
								<div class="filebox bs3-primary preview-image">
									<input class="upload-name" value="파일선택" disabled="disabled"
										style="width: 200px;"> <label for="input_file">선택</label>
									<input type="file" id="input_file" name="file" class="upload-hidden">
								</div>

								<pre id="list1"
									style="height: 220px; width: 220px; background-color: white; border: none;"></pre>
								<div class="modal-footer">
									<button type="submit" class="btn button button5" id="F_upload">
										<span class="glyphicon glyphicon-off"></span> 업로드
									</button>
									<span></span>
									<button type="submit" class="btn button button_warning  "
										data-dismiss="modal">
										<span class="glyphicon glyphicon-remove"></span> Cancel
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
		<c:forEach var="i" begin="0" end="${size }" varStatus="status">
			<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
				<br> <img
					src="/profilefolder/${list[i].get('ID')}" alt="Avatar"
					id="fileselect" class="w3-left w3-circle w3-margin-right"
					style="width: 60px">
				<h6 class="w3-opacity">
					<a href="/profile/${list[i].get('ID')}"> <b>${list[i].get("NAME") }</b>(${list[i].get("ID") })님
					</a>
				</h6>
				<p>${list[i].get("COMMENTS") }</p>
				<input type="hidden" id="uploadId"
					value="${list[i].get('FILEUUID')}"> #업로드된 이  파일번호 는 [<b>${list[i].get('FILEUUID')}</b>]입니다
				<div class="w3-row-padding" style="margin: 0 -16px">
					<div class="w3-half">
						<button type="button" id="filemodal_${status.index }"
							style="border: none; background: transparent;"
							onclick="button1_click('${list[i].get('FILEUUID') }', '${list[i].get('ID')}','${list[i].get('COMMENTS') }','${list[i].get('CATE') }','${userId }' )">
						<img src="/users/${list[i].get('FILEUUID') }" style="width: 100%" alt="Northern Lights" class="w3-margin-bottom" id="test">
						</button>
					</div>
				</div>
				<button type="button" class="button button5"
					onclick="likeclick('${list[i].get('FILEUUID') }')">
					<i class="fa fa-thumbs-up"></i>  좋아요♥
				</button>
				<button type="button" class="button button5"
					onclick="board_click('${list[i].get('FILEUUID') }','${nickname }','${userId }')">
					<i class="fa fa-comment"></i>  댓글달기
				</button>
				<br /> <a id="good${list[i].get('FILEUUID') }"></a><span
					id="like_p_${list[i].get('FILEUUID') }"></span>
				<hr />
				<input type="text" id="f_comments_${list[i].get('FILEUUID') }"
					class="form-control" placeholder="댓글을 입력하세요"
					onblur="board_blur('${list[i].get('FILEUUID') }','${nickname }','${userId }')">
				<div id="f_comborder_${list[i].get('FILEUUID') }"></div>
			</div>
		</c:forEach>
	</c:otherwise>
</c:choose>
<div class="modal modal-center fade" id="my80sizeCenterModal"
	tabindex="-1" role="dialog" aria-labelledby="my80sizeCenterModalLabel">
	<div class="modal-dialog modal-80size modal-center" role="document">
		<div class="">
			<div id="wrap">
				<div id="top_view">
					<a class="logo" href="/main" style="color: #2EFE2E;"><i
						class="glyphicon glyphicon-hom"></i>&nbsp;<b>Pupu</b></a><br /> <input
						type="hidden" value="${userId }" id="s_id"> <input
						type="hidden" value="" id="s_cate">
				</div>
				<nav id="main_lab">
					<ul class="nav">
						<li>
							<p>
								<img id="modal_img" class="media-object" src="" width="304"
									height="236">
							</p> <br />
							<div id="featured">
								<div id="ment">
									<i class="glyphicon glyphicon-pencil"></i>
									<p id="modal_comments"></p>


									<button type="submit" id="bt" class="button button4 "
										data-toggle="tooltip" data-placement="top" title="글을 남겨주세요">

										<i class="glyphicon glyphicon-bullhorn"></i><b>글쓰기</b>
									</button>
									<br />
									<div class=" list-group">
										<div class="col-sm-4 text-left">
											<div id="port4">
												<a href="javascript:showProduct('${userId }')" style="color: white;"><b>상품정보가
														등록되어있습니다.</b></a>

											</div>											
											<div id="port2_sun" class="list-group">
												<a class="list-group-item active"> 카테고리 :<b id="cateP"></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<b style="color: #2EFE2E; position: right">장바구니에담기</b><input
													type="checkbox" id="h_product"></a> <a
													class="list-group-item ">상품명 :<b id="nameP"></b>
												</a> <a class="list-group-item ">가격 :<b id="priceP"></b></a> <a
													class="list-group-item ">제공자 :<b id="idP"></b>
												</a> <br />
											</div>
										</div>
									</div>


									<div id=asd class="button button5" data-toggle="tooltip"
										data-placement="right" title="사진의상품을 아시나요?">
										<b>정보제공</b>
									</div>
									<div id="port1" class=" panel-info">
										<label for="productname"></label> <input type="hidden"
											id="filename" value=""> <input type="text"
											name="name" id="productname" class="btn  form-control"
											style="position: left;" placeholder="상품명"> <label
											for="price"></label> <input type="text" name="productprice"
											id="productprice" class="btn  form-control" placeholder="가격"><br>
										<input type="button" class="button button5" value="정보입력"
											id="bt1">
									</div>
									<div id="port">
										<input type="text" class=" form-control"
											placeholder="Comments.." id="write" />
									</div>
								</div>
							</div>
						</li>
					</ul>
				</nav>
				<div id="content_wrap">
					<div id="content">

						<div id="ccc"></div>

					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="button button_warning"
					data-dismiss="modal">
					<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>닫기
				</button>
			</div>
		</div>
	</div>
</div>
<script>

	$("#h_product").change(function() {
		var v =  $("#h_product").val();
		var v2 = $("#s_cate").val();
		if(v=="on") {
			printTime1();
			var time;
			function printTime1() {
		        var now = new Date();                                               
		        var nowTime = now.getFullYear() + "-" + (now.getMonth()+1) + "-" + now.getDate();
		        time = nowTime;          
		        setTimeout("printTime()",1000);       
			}
			var fileid = $("#filename").val();
			$.ajax({
				"url":"/havs/cart?fileuuid="+fileid+"&time="+time+"&cate="+v2,
				"methode":"get"
			}).done(function(rst) {
				if(rst=="true") {
					alert("장바구니에 등록되었습니다.");
					$("#h_product").hide();
				}else {
					alert("실패");
				}
			})
		}
	});
</script>
<script>
function board_blur(uuid, nick, id) {
	var r = $("#f_comments_"+uuid).val();
	printTime3();
	var time;
	function printTime3() {
        var now = new Date();                                               
        var nowTime = now.getFullYear() + "-" + (now.getMonth()+1) + "-" + now.getDate() + " " + now.getHours() + ":" + now.getMinutes() + ":" + now.getSeconds();
        time = nowTime;          
        setTimeout("printTime()",1000);       
	}
	if(r!="") {
		$("#f_comborder_"+uuid).append("<img src='/profilefolder/"+id+"'class='w3-left w3-circle w3-margin-right' style='width: 60px'/>"+nick+"("+id+"):"+r+"("+time+")<br/>");
		$.ajax({
			"dataType":"json",
			"url":"/saveWirter?id="+id+"&nick="+nick+"&uuid="+uuid+"&memo="+r,
			"methode":"get"
		}).done(function(rst) {
			if(rst=="true") {
				console.log("등록");
			}else {
				console.log("실패");
			}
		});
	}
}
function board_click(uuid,nick,id) {
	$("#f_comments_"+uuid).focus();
	printTime2();
	var time;
	function printTime2() {
        var now = new Date();                                               
        var nowTime = now.getFullYear() + "-" + (now.getMonth()+1) + "-" + now.getDate() + " " + now.getHours() + ":" + now.getMinutes() + ":" + now.getSeconds();
        time = nowTime;          
        setTimeout("printTime()",1000);       
	}
	$("#f_comments_"+uuid).blur(function() {
		var r = $("#f_comments_"+uuid).val();
		if(r!="") {
			$("#f_comborder_"+uuid).append("<img src='/profilefolder/"+id+"'class='w3-left w3-circle w3-margin-right' style='width: 60px'/>"+nick+"("+id+"):"+r+"("+time+")<br/>");
			$.ajax({
				"dataType":"json",
				"url":"/saveWirter?id="+id+"&nick="+nick+"&uuid="+uuid+"&memo="+r,
				"methode":"get"
			}).done(function(rst) {
				if(rst=="true") {
					console.log("등록");
				}else {
					console.log("실패");
				}
			});
		}
	});
}

</script>
<script>
$(document).ready(function(){
	var userid = $("#userid").val();
	$.ajax({
		"dataType":"json",
		"url":"/getWirter",
		"methode":"get"
	}).done(function(rst) {
		if(rst!="null") {
			for(var i=0;i<rst.length;i++) {
				$("#f_comborder_"+rst[i].cod).append("<img src='/profilefolder/"+userid+"' class='w3-left w3-circle w3-margin-right' style='width: 40px'/>"+rst[i].id+":"+rst[i].comments+"("+rst[i].dates+")<br/>");	
			}
		}
	})
		$.ajax({
		"dataType":"json",
		"url":"/getliker",
		"methode":"get"
	}).done(function(rst) {
		if(rst!="null") {
			for(var i=0;i<rst.length;i++) {
				
				$("#good"+rst[i].id).html("<i class='fa fa-thumbs-up'></i>");
				$("#like_p_"+rst[i].id).append("<b>"+rst[i].like+"</b>님");	
			}
		}
	})

	$("#list1").hide();
    $("#upload").click(function(){
        $("#myModal").modal();
		$("#up_files").click(function(){
			$("#list1").show();		
		});
    });
});
</script>

<script>
function likeclick(uuid) {
	$.ajax({
		"dataType":"json",
		"url":"/liker?uuid="+uuid,
		"methode":"get"
	}).done(function(rst){
		if(rst[0].unlike!="false") {
			for(var i=0;i<rst.length;i++) {
				$("#like_p_"+uuid).html("<i class='fa fa-thumbs-up'></i>");
				$("#like_p_"+uuid).append("<b>"+rst[i].like+"</b>님");
				
			}
		}else {
			$("#like_p_"+uuid).html("");
		}
	})
};
</script>

<script>

$("#bt").dblclick(function(){
	$("#port").slideToggle();
});
</script>
<script>
 $("#bt1").click(function() {
	$("#port1").hide();
	
	var p_name = $("#productname").val();
	var p_price = $("#productprice").val();
	var fileuid = $("#filename").val();
	var p_cate = $("#s_cate").val();
	$.ajax({
		"url":"/product?name=" + p_name + "&price=" + p_price+"&fileuid="+fileuid+"&cate="+p_cate,
		"methode":"get"
	}).done(function(rst){
		if (rst != '') {
			window.alert("정보등록완료");
			$("#asd").hide();
			$("#port4").show();
			$("#nameP").html(p_name);
			$("#priceP").html(p_price);
			$("#cateP").html(p_cate);
			$("#idP").html(rst);
		} else {
			window.alert("정보등록실패");
			
		}
	});
 })
</script>
<script>

function button1_click(uuid, id, comment, cate, sessionid) {
	$("#port2_sun").hide();
	$("#port4").hide();
	$("#modal_img").attr("src", "/users/"+uuid);
	$("#modal_comments").html(comment);
	$("#filename").attr("value",""+uuid);
	$("#s_cate").attr("value",""+cate);
	$("#my80sizeCenterModal").modal();
	$("#ccc").html("");
	var d = $("#filename").val();
	$("#port").slideToggle();
	$.ajax({
		"dataType": "json",
		"url":"/memo/show?fileuuid="+uuid,
		"methode":"get"
	}).done(function(rst) {
		if(rst!="null") {
			for(var i=0;i<rst.length;i++) {
				$("#ccc").append("<div class='panel panel-info'>"
						   +"<div class='panel-heading' id='pn'>"+"<img src='/profilefolder/"+sessionid+"' class='w3-left w3-circle w3-margin-right' style='width: 60px'/><b>"
						    +"<p>"+"</p>"+"<span class='glyphicon glyphicon-user user_color' aria-hidden='true'/>"+"&nbsp;"+rst[i].id+"</b>"+"</div>"+	
							"<div class='panel-body'>"+rst[i].memo+
							"<br/>"+"<p class='font_big font_right font_color'>"+"<span class='glyphicon glyphicon-envelope user_color' aria-hidden='true'/>"+"&nbsp;"+"Date:"+rst[i].dates+"</p>"+"</div>"+"</div>");

			}
		} else {
			$("#ccc").hide();
		}
	})
	$.ajax({
		"dataType":"json",
		"url":"/productshow?filename="+d,
		"methode":"get"
	}).done(function(rst) {
		if(rst[0].name!="null"){
			$("#asd").hide();
		}else {
			$("#asd").show();
		}
	});
}
</script>

<script>
function showProduct(id) {
	$("#port2_sun").slideToggle();
	var d = $("#filename").val();
	$.ajax({
		"dataType":"json",
		"url":"/productshow?filename="+d,
		"methode":"get"
	}).done(function(rst) {
		if(rst[0].name!="null") {
			$("#nameP").html(rst[0].name);
			$("#priceP").html(rst[0].price);
			$("#idP").html(rst[0].id);
			$("#cateP").html(rst[0].cate);
		}else {
			
			$("#asd").show();	
		}
	});
}
</script>

<script>
$("#port1").hide();
$("#asd").click(function() {
	$("#port1").show();
});
</script>

<script>
$("#write").change(function(){
	printTime();
	var time;
	function printTime() {
        var now = new Date();                                               
        var nowTime = now.getFullYear() + "-" + (now.getMonth()+1) + "-" + now.getDate() + " " + now.getHours() + ":" + now.getMinutes() + ":" + now.getSeconds();
        time = nowTime;          
        setTimeout("printTime()",1000);       
	}
	var t=	$("#modal_img").attr("alt");
	var d = $("#filename").val();
	var m =	$("#write").val();
	var i = $("#s_id").val();
	$("#write").val("");
		$.ajax({
			"url":"/memo/upMemo?fileuuid="+d+"&memo="+m+"&id="+i,
			"methode":"get"
		}).done(function(rst){
			if(rst=="YYYYY") {
				$("#ccc").append("<div class='panel panel-info'>"
						   +"<div class='panel-heading' id='pn'>"+"<img src='/profilefolder/"+i+"class='w3-left w3-circle w3-margin-right' style='width: 60px'/><b>"
						    +"<p>"+"</p>"+"<span class='glyphicon glyphicon-user user_color' aria-hidden='true'/>"+"&nbsp;"+i+"</b>"+"</div>"+	
							"<div class='panel-body'>"+m+
							"<br/>"+"<p class='font_big font_right font_color'>"+"<span class='glyphicon glyphicon-envelope user_color' aria-hidden='true'/>"+"&nbsp;"+"Date:"+i+"</p>"+"</div>"+"</div>");
			}else {
				window.alert("코멘트 등록 실패");
			}
		});
});
</script>


<script>
function myFunction(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
        x.previousElementSibling.className += " w3-theme-d1";
    } else {
        x.className = x.className.replace("w3-show", "");
        x.previousElementSibling.className =
        x.previousElementSibling.className.replace(" w3-theme-d1", "");
    }
}
</script>

<script>
function openNav() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}
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


<script>
$(document).ready(function(){
    $('[data-toggle="popover"]').popover();   
});
</script>