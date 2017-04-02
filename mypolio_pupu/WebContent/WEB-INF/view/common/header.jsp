<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<link rel="stylesheet" href="css/lavalamp.css" />
<script src="js/lavalamp.js"></script>


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>
.home_color{
  color: #00FF40;
}

.help_color{
  color:#FFFFFF;
}
</style>



<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/main" style="color: #00FF40;">Pupu</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="/main">Home</a></li>
				
				<li><a></a></li>
				<li><a></a></li>
				<li><a></a></li>
				<li><a></a></li>
				<li><a></a></li>
				<li><a></a></li>
				<li><a></a></li>
				<li><a></a></li>
				<li><a></a></li>
				<li><a></a></li>
				<li><a></a></li>
				<li><a></a></li>
				<li><a></a></li>
				<li><a></a></li>
				<li><a></a></li>
				<li><a></a></li>
				<li><a></a></li>
				<li><a></a></li>
				<li><a></a></li>
				<li><a></a></li>
				<li><a></a></li>
				


				<li ><a href="/profile/${userId }"><span class="glyphicon glyphicon-home home_color"></span>&nbsp;MyHome</a></li>
				<li><a href="/cart"><span class="glyphicon glyphicon-shopping-cart help_color"></span>&nbsp;Cart</a></li>
				<li><a href="/user/myalbum"><span class="glyphicon glyphicon-camera help_color"></span>&nbsp;Photo</a></li>
				<li><a href="/qna/board"><span class="glyphicon glyphicon-book help_color"></span>&nbsp;Q&A</a></li>
				
				     
				<li><a href="/logout" style="color: #0080FF;">LogOut</a></li>
			</ul>
		</div>
	</nav>



</body>

