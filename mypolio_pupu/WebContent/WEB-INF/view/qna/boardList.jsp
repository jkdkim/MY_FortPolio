<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<h2>게시글 목록</h2>
<table width="85%" border=1 id="qnaList">
	<tr id="header" align="center">
		<th width="8%">글번호</th>
		<th>제목</th>
		<th width="10%">작성자</th>
		<th width="8%">답변</th>
		<th width="25%">작성일</th>
	</tr>
	<c:if test="${qna.size()-1 ne -1 }">
		<c:forEach var="i" begin="0" end="${qna.size()-1 }">
			<tr>
				<td>${qna[i].get("NUM") }</td>
				<td><a href="/qna/view?num=${qna[i].get('NUM') }">
						${qna[i].get("TITLE") }</a></td>
				<td>${qna[i].get("ID") }</td>
				<td>답변</td>
				<td>${qna[i].get("WRITEDATE") }</td>
			</tr>
		</c:forEach>
	</c:if>
</table>
</br>
</br>

<a href="/qna/form"><button>질문하기</button></a>

