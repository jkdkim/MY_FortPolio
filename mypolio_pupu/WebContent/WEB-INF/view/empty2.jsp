<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${comen.size()-1 ne -1 }">
[
<c:forEach var="i" begin="0" end="${comen.size()-1 }">
<c:if test="${i ne 0 }">,</c:if>
{
"id":"${comen[i].get("ID")}",
"memo":"${comen[i].get("MEMO")}",
"dates":"${comen[i].get("DATES")}"
}
</c:forEach>
]	
</c:if>