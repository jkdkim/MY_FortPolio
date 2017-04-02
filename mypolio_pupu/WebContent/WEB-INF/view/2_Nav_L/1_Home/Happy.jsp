<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<!-- Right Column -->
	<div class="w3-col m2">
		<div class="w3-card-2 w3-round w3-white w3-center">
			<div class="w3-container">
			<p>Follow List</p>

				<div id="F_dialog" title="팔로워목록"></div>
				
				<hr/>
				<br/>
				<div id="login"></div>
			</div>
		</div>
		<br>
		<div class="w3-card-2 w3-round w3-white w3-center">
			<div class="w3-container">
				<p>Friend Request</p>
				<div id="chat" title="알림"></div>
				<div class="w3-row w3-opacity">
					<div class="w3-half">
						<button class="w3-btn w3-green w3-btn-block w3-section"
							title="Accept" id="ok">
							<i class="fa fa-check"></i>
						</button>
					</div>
					<div class="w3-half">
						<button class="w3-btn w3-red w3-btn-block w3-section"
							title="Decline" id="ok">	
							<i class="fa fa-remove"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
		<br>
	</div>
	<br>
<script>
$(document).ready(function(){
	$.ajax({
		"dataType":"json",
		"url":"/followShow",
		"methode":"get"
	}).done(function(rst){
		for(var i =0;i<rst.length;i++) {
			$("#F_dialog").append(rst[i].id+"<br/>");	
		}
	});
});
</script>
<script>
$("#ok").click(function() {
	$("#chat").html("");
});
</script>
<script>
	var socket;
	
	var target = "ws://192.168.10.22/knock_member";
	socket = new WebSocket(target);
	socket.onopen = function(args) {
		$("#login").html("<p>서버정상접속</p>");
	}
	socket.onmessage = function(args) {
		var i = args.data;
		var com = i.split("#");
		if(com[0]==1) {
			$.ajax({
				"url":"/authLike?fileuid="+com[2],
				"methode":"get"	
			}).done(function(rst){
				if(rst!="NNNN") {
					$("#chat").html(com[1]+"님이'"+com[2]+"'좋아요를 눌렀습니다..");
				}
			});
		}
		if(com[0]==2) {
			$.ajax({
				"url":"/authComment?fileuid="+com[1],
				"methode":"get"	
			}).done(function(rst){
				if(rst!="NNNN") {
					$("#chat").html(com[2]+"님이'"+rst+"'게시글에 글을 남겼습니다.");
				}
			});	
		}
		if(com[0]==3) {
			$.ajax({
				"url":"/authFollow?followme="+com[2],
				"methode":"get"	
			}).done(function(rst){
				if(rst!="NNNN") {
					$("#chat").html(com[1]+"님이'"+com[2]+"'님을 팔로워했습니다.");
				}
			});	
		}
		
		document.getElementById("chat").scrollTop = document.getElementById("chat").scrollHeight;
	}
	socket.onclose = function(args) {
	}
	
	function destroy() {
		socket.close();
	}

	</script>
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
</script>
	<script>
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
