<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>    
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <h2>Best Top3</h2>
  <p>회원들이 가장 많이 선호하는 BEST 3</p>
  <div class="row">
  <c:forEach var="vb" items="${top }">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="" target="_blank">
          <img src="/users/${vb.L_FILEUUID }" alt="Pulpit Rock" style="width:100%">
        </a>
      </div>
    </div>
    </c:forEach>
</div>


