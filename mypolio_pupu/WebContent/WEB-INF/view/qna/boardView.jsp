<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Խñ� �󼼺���</title>

<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: left;
}
</style>
</head>

<body>
	<div id="wrap" align="left">
		<h2>�Խñ� �󼼺���</h2>
		<form name="frm" method="post" action="/qna/view">
			<h3>${qnaview.get("TITLE") }</h3>
			<div class="title" style="height: auto; width: 85%;">
				<dl class="f_left">
					<dt>�ۼ���</dt>
					<dd>${qnaview.get("ID") }</dd>
					<dt>�ۼ���</dt>
					<dd>${qnaview.get("WRITEDATE") }</dd>
				</dl>
				<dl class="f_right f_none">
				</dl>
			</div>

			<div class="txtview">
				<div id="contentView" class="richview"
					style="height: auto; width: 85%; border-bottom: 1px solidblack;">
					<P>${qnaview.get("CONTENT") }</P>
				</div>
			</div>


			<%-- <table border="1" width="90%">
				<tr>
					<th>��&nbsp;��</th>
					<td>${qnaview.get("TITLE") }</td>
				</tr>
				<tr>
					<th>�ۼ���</th>
					<td>${qnaview.get("ID") }</td>
				</tr>
				<tr>
					<th>�ۼ���</th>
					<td>${qnaview.get("WRITEDATE") }</td>
				</tr>
				<tr>
					<th>��&nbsp;��</th>
					<td>${qnaview.get("CONTENT") }</td>
				</tr>
			</table>
 --%>
		</form>
		</br> <a href="/qna/board"><button>���</button></a>
	</div>
</body>
</html>