<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시글 작성하기</title>
</head>

<body>
	<div id="wrap" align="center">
		<h2>게시글 등록</h2>
		<form name="frm" method="post" action="/qna/write">
			<table>
				<tr>
					<th>작성자</th>
					<td>${userId }</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="text" size="10" name=pass></td>
				</tr>
				</br>
				<tr>
					<th>제&nbsp;목</th>
					<td><input type="text" size="68" name="title"></td>
				</tr>

				<tr>
					<th>내&nbsp;용</th>
					<td><textarea cols="70" rows="15" name="content"></textarea></td>
				</tr>
			</table>
			<button type="submit">등록하기</button>
		</form>


	</div>
</body>
</html>




<!-- 

<script type="text/javascript" src="/SE/js/HuskyEZCreator.js"
	charset="utf-8"></script>


<script type="text/javascript">
							var oEditors = [];
							nhn.husky.EZCreator.createInIFrame({
								oAppRef : oEditors,
								elPlaceHolder : "ir1",
								sSkinURI : "/SE/SmartEditor2Skin.html",
								fCreator : "createSEditor2"
							});
						</script>


 -->