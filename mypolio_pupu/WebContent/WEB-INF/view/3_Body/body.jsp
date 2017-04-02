<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>NewsFeed</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="http://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Open Sans", sans-serif
}
</style>
<body class="w3-theme-l5">

	<!-- Accordion -->
	<div class="w3-card-2 w3-round">
		<div class="w3-accordion w3-white">



			<div id="Demo3" class="w3-accordion-content w3-container">
				<div class="w3-row-padding">
					<br>
					<div class="w3-half">
						<img src="/w3images/lights.jpg" style="width: 100%"
							class="w3-margin-bottom">
					</div>
					<div class="w3-half">
						<img src="/w3images/nature.jpg" style="width: 100%"
							class="w3-margin-bottom">
					</div>
					<div class="w3-half">
						<img src="/w3images/mountains.jpg" style="width: 100%"
							class="w3-margin-bottom">
					</div>
					<div class="w3-half">
						<img src="/w3images/forest.jpg" style="width: 100%"
							class="w3-margin-bottom">
					</div>
					<div class="w3-half">
						<img src="/w3images/nature.jpg" style="width: 100%"
							class="w3-margin-bottom">
					</div>
					<div class="w3-half">
						<img src="/w3images/fjords.jpg" style="width: 100%"
							class="w3-margin-bottom">
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>


	<div class="w3-row-padding">
		<div class="w3-col m12">
			<div class="w3-card-2 w3-round w3-white">
				<div class="w3-container w3-padding">
					<h6 class="w3-opacity"><a>${userId}</a>님</h6>
					<p contenteditable="true" class="w3-border w3-padding"></p>
					<pre id="list1" style="height: auto; "></pre>
					<input type="file" id="up_files" name="file" onchange="handleFileSelect()" />
					<button type="button" class="w3-btn w3-theme">
						<i class="fa fa-pencil"></i>  올리기
					</button>
				</div>
			</div>
		</div>
	</div>

	<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
		<br> <img src="/w3images/avatar2.png" alt="Avatar"
			class="w3-left w3-circle w3-margin-right" style="width: 60px">
		<span class="w3-right w3-opacity">1 min</span>
		<h4>John Doe</h4>
		<br>
		<hr class="w3-clear">
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
			do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
			enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
			ut aliquip ex ea commodo consequat.</p>
		<div class="w3-row-padding" style="margin: 0 -16px">
			<div class="w3-half">
				<img src="/w3images/lights.jpg" style="width: 100%"
					alt="Northern Lights" class="w3-margin-bottom">
			</div>
			<div class="w3-half">
				<img src="/w3images/nature.jpg" style="width: 100%" alt="Nature"
					class="w3-margin-bottom">
			</div>
		</div>
		<button type="button" class="w3-btn w3-theme-d1 w3-margin-bottom">
			<i class="fa fa-thumbs-up"></i>  좋아요♥
		</button>
		<button type="button" class="w3-btn w3-theme-d2 w3-margin-bottom">
			<i class="fa fa-comment"></i>  댓글달기
		</button>
	</div>

	<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
		<br> <img src="/w3images/avatar5.png" alt="Avatar"
			class="w3-left w3-circle w3-margin-right" style="width: 60px">
		<span class="w3-right w3-opacity">16 min</span>
		<h4>Jane Doe</h4>
		<br>
		<hr class="w3-clear">
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
			do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
			enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
			ut aliquip ex ea commodo consequat.</p>
		<button type="button" class="w3-btn w3-theme-d1 w3-margin-bottom">
			<i class="fa fa-thumbs-up"></i>  좋아요♥
		</button>
		<button type="button" class="w3-btn w3-theme-d2 w3-margin-bottom">
			<i class="fa fa-comment"></i> 댓글달기
		</button>
	</div>

	<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
		<br> <img src="/w3images/avatar6.png" alt="Avatar"
			class="w3-left w3-circle w3-margin-right" style="width: 60px">
		<span class="w3-right w3-opacity">32 min</span>
		<h4>Angie Jane</h4>
		<br>
		<hr class="w3-clear">
		<p>Have you seen this?</p>
		<img src="/w3images/nature.jpg" style="width: 100%"
			class="w3-margin-bottom">
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
			do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
			enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
			ut aliquip ex ea commodo consequat.</p>
		<button type="button" class="w3-btn w3-theme-d1 w3-margin-bottom">
			<i class="fa fa-thumbs-up"></i>  Like
		</button>
		<button type="button" class="w3-btn w3-theme-d2 w3-margin-bottom">
			<i class="fa fa-comment"></i>  Comment
		</button>
	</div>

	<script>
// Accordion
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

// Used to toggle the menu on smaller screens when clicking on the menu button
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
    function handleFileSelect() 
    {
        var files = document.getElementById('up_files').files[0]; //파일 객체
 
        var reader = new FileReader();
 
        //파일정보 수집        
        reader.onload = (function(theFile) 
        {
            return function(e) 
            {
                //이미지 뷰
                var img_view = ['<img src="', e.target.result, '" title="', escape(theFile.name), '"/>'].join('');                
                document.getElementById('list1').innerHTML = img_view;
            };
 
        })(files);
            
        reader.readAsDataURL(files);    
    }
</script>
</body>
</html>

