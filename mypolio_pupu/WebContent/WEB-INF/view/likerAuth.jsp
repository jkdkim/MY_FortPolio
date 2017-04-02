<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${getliker.size()-1 ne -1 }">
[
<c:forEach var="i" begin="0" end="${getliker.size()-1 }">
<c:if test="${i ne 0 }">,</c:if>
{
"id":"${getliker[i].get("L_FILEUUID")}",
"like":"${getliker[i].get("L_SELECTLIKER")}"
}
</c:forEach>
]	
</c:if>