<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div align="left">
	<h3>자료 등록</h3>
	&nbsp;&nbsp;&nbsp;&nbsp;※ <b>SYAHR</b>&nbsp;&nbsp;서비스를 이용하여 개인의 자료를 무료로
	등록할수 있습니다.

</div>
<form action="/upload/02.it" style="line-height: 40px;" method="post"
	enctype="multipart/form-data">
	→ 카테고리 # <select name="cate">
		<option value="pc">PC관리</option>
		<option value="media">동영상</option>
		<option value="office">사무</option>
		<option value="edu">교육</option>
		<option value="etc">기타</option>
	</select> <br /> → 내용 # <input type="text" name="comment" size="40" /> <br />
	→ 첨부 # <input type="file" name="file" />
	<hr />

	<input type="submit" value="자료등록" />
</form>