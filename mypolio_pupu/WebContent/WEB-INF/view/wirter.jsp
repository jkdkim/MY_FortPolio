<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${commts.size()-1 ne -1 }">
[
<c:forEach var="i" begin="0" end="${commts.size()-1 }">
<c:if test="${i ne 0 }">,</c:if>
{
"id":"${commts[i].get("ID")}",
"comments":"${commts[i].get("COMMENTS")}",
"cod":"${commts[i].get("COMMENTS_FILEUUID")}",
"dates":"${commts[i].get("SAVEDATE")}"
}
</c:forEach>
]	
</c:if>