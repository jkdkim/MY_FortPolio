

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<h2 align="center">주문자 리스트</h2>
<%
	List<String> news = new ArrayList<String>();
	news.add("MBC 납량특집 드라마 M");
	news.add("번호");
	news.add("상품");
	news.add("");
%>



<table border="1"  style="text-align: center; width:60%; height:100px;">
	<%
		for (int i = 0; i < news.size(); i++) {
	%>
	<tr>
		<td><%=i + "번째 상품"%></td>
		<td><%=news.get(i)%></td>
		<td><input type="checkbox"></td>
	</tr>

	<%
		}
	%>
</table>
<br/>
<input type="button" value="확인" />


