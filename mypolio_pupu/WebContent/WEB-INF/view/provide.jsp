<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
	 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <style>


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
</style> 
  

  
<div class="container">
	<!-- Modal -->
	<div class="modal fade" id="provide_myModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body" style="padding: 40px 50px;">
					<div align="center" id="fome_provide">
					<div class=" alert-info" >사진에 대한 정보를 입력하시겠습니까?</div><br/>
					
					<button type="button" class="button button5" id="yes">YES</button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="button"  class="button button_warning" id="no"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>NO</button>
					</div>
					<div id="fome_provide2" >
				
					<input type="hidden" value="${uid }" id="uid">
					<input type="hidden" value="${cate } " id="cate"><br/>
						
						<div class="list-group" >
						<a href="#" class="list-group-item active">
                                  상품정보 입력
                             </a>
						 <input type="text"  class="form-last-name form-control" placeholder="상품명:" id="p_name" data-toggle="tooltip" data-placement="top" title="정확하게 입력!">
					
					     <input type="text" class="form-last-name form-control" placeholder="상품가격:"    id="p_price">	
                         </div>

						<br/>
						 <button type="button" class="button button5"  id="bt1">정보입력</button>
					</div>
					<script>
					$("#fome_provide2").hide();
					$("#yes").click(function() {
						$("#fome_provide").hide();
						$("#fome_provide2").show();
					})
					$("#bt1").click(function() {
						var p_name = $("#p_name").val();
						var p_price = $("#p_price").val();
						var p_id = $("#p_id").val();
						var fileuid = $("#uid").val();
						var cate = $("#cate").val();
						$.ajax({

							"url":"/product?name=" + p_name + "&price=" + p_price+"&fileuid="+fileuid+"&cate="+cate,
							"methode":"get"
						}).done(function(rst){
							if(rst != '') {
								window.alert("정보등록완료");
								location.href="/main";
							}
						})
					})
					$("#no").click(function() {
						window.close();
						 location.href="/main";
					})
									</script>
								</div>
							</div>
						</div>
					</div>
				</div>
	
<script>
$(document).ready(function() {
	$("#provide_myModal").modal();
})
</script>


<script>
$(document).ready(function(){
    $('[data-toggle="popover"]').popover();   
});
</script>