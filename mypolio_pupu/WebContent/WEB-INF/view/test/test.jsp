<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach var="i" begin="0" end="${test.size()-1 }">
${test[i].L_SELECTLIKER}
</c:forEach>