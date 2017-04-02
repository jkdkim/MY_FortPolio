<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!-- 기본 템플릿을 작성! -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NewsFeed</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/lavalamp.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/styles.css" rel="stylesheet">
<link rel="stylesheet"
	href="http://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link href="/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="/css/lavalamp.css"/>


</head>
<body>
	<header style="margin: 0px; padding: 30px; background-color: #fffff">
		<tiles:insertAttribute name="header" />
	</header>
	<div class="container" style="min-height: 600px;">
		<div class="row">
			<nav>
				<div class="col-md-2" style="margin: 0px; padding: 30px;">
					<tiles:insertAttribute name="nav" />
				</div>
			</nav>
			<article>
				<div class="col-md-8">
					<tiles:insertAttribute name="body" />
				</div>
			</article>
			<aside>
				<tiles:insertAttribute name="aside" />
			</aside>
		</div>
	</div>
	<footer class="container-fluid text-center">
		CopyRight <b> &copy; PUPU corp.</b> All rights reserved.
	</footer>
</body>
</html>