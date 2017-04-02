<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!-- 기본 템플릿을 작성! -->
<!DOCTYPE html>

<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/css/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>	
	
</head>

<style>
 #bg{
 background-image: url('users/background22.jpg');
	   background-repeat: no-repeat; 
	   background-size:  100% 62%;
       background-position: fixed;
 
 
 }


</style>

<body>

	<header style="margin: 0px; padding: 10px; ">
		<tiles:insertAttribute name="header" />
	</header>
<div style="min-height: 1200px;" id="bg">
	<div class="container"  >
		<div class="row">
			<article>
				<div class="col-md-8">
					<tiles:insertAttribute name="body" />
				</div>
			</article>
			<aside>
				<div class="col-md-2" style="margin: 0px; padding: 0px;">
					<tiles:insertAttribute name="nav" />
				</div>
			</aside>
		</div>
	


 </div>
 <br/>
 <br/>
 <br/>
	<footer class="text-center"
		style="color: #fffff "  >
		CopyRight <b style="color: white"> &copy; PUPU corp.</b> All rights reserved.
	</footer>
	</div>
	

  <div class="container-responsive">
    <h2 class="alt-h2 mt-3 mb-2 text-center">Welcome home, followers</h2>
      <p class="alt-h2 mt-3 mb-2 text-center">Who uses PUPU?</p>
  </div>


<div id="tabs">
  <ul>
    <li><a href="#tabs-1">사용법</a></li>
    <li><a href="#tabs-2">주의사항</a></li>
    <li><a href="#tabs-3">목적</a></li>
  </ul>
  <div id="tabs-1">
 <p>회원가입-> 마이피드에 사진업로드 -> 사진 정보 제공-> PUPU에서 구매 사이트 혹은 구매대행 결제창 연결 -> 관심회원 구입</p>
  </div>
  <div id="tabs-2">
  <P>욕설,비망, 허위정보 기재시 사용상 제재</P>  
  </div>
  <div id="tabs-3">
  <P>누군가 올린 사진에서 내가 마음에 드는 물건이 있다면? 바로 구매가능!</P>
  </div>
</div>

	
</body>
<script>
  $( function() {
    $( "#tabs" ).tabs();
  } );
  </script>
