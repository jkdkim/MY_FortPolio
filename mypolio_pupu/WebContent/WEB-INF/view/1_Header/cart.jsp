<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Cart</title>

<h1>장바구니</h1>
<c:choose>
<c:when test="${productList.size() ne 0 }">
<table border=1 id="cartList">
	<tr id="header">
		<th style="text-align: center;">상품 카테고리</th>
		<th style="text-align: center;">상품번호</th>
		<th style="text-align: center;">상품명</th>
		<th style="text-align: center;">가격</th>
		<th style="text-align: center;">선택</th>
	</tr>
	<c:forEach var="i" begin="0" end="${productList.size() -1}">
		<tr>
			<td style="text-align: center;">${productList[i].get("PRODUCTCATE") }</td>
			<td style="text-align: center;">${productList[i].get("PRODUCTINFO") }</td>
			<td style="text-align: center;">${productList[i].get("PRODUCTNAME") }</td>
			<td style="text-align: center;">${productList[i].get("PRODUCTPRICE") }</td>
			<td style="text-align: center;"><button onclick="buy_cart_('${productList[i].get('PRODUCTPRICE') }');">구매하기</button></td>
		</tr>
	</c:forEach>
</table>
</c:when>
<c:otherwise>
<h3>장바구니에 담으신게 없어요!!!</h3>
</c:otherwise>
</c:choose>
<script>
	function buy_cart_(filenumber) {
		
	}
</script>