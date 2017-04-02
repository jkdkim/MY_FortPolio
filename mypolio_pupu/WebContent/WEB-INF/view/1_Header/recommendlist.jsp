
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Cart</title>

<h1>장바구니</h1>
<table border=1 id="cartList">
	<tr id="header" align="center">
		<th>상품 카테고리</th>
		<th>상품번호</th>
		<th>상품명</th>
		<th>가격</th>
	</tr>
	<c:forEach var="i" begin="0" end="${productList.size() }">
		<tr>
			<td>${productList[i].get("PRODUCTCATE") }</td>
			<td>${productList[i].get("PRODUCTINFO") }</td>
			<td>${productList[i].get("PRODUCTNAME") }</td>
			<td>${productList[i].get("PRODUCTPRICE") }</td>
			<td>주문완료 리스트 (관리자)</td>
		</tr>
	</c:forEach>
</table>