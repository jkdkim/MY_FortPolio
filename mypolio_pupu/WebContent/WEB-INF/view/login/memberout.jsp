<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Profile -->
 
 
    <c:forEach var="obj" items="${memberlist }">
      <div class="w3-card-2 w3-round w3-white">
        <div class="w3-container">
         <h4 class="w3-center">Member Profile</h4>
        
         <p align="center"><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme" ></i>이름: ${obj.get("NAME") }</p>
         <p align="center"><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i>아이디: ${obj.get("ID") }</p>
         <p align="center"><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i>생년월일: ${obj.get("BIRTH") }</p>
          <p align="center"><input type="button" value="삭제" onclick="delmember('${obj.get('ID')}')"/></p><hr/><br/>
        </div>
      </div>
      </c:forEach>
      <br>
     
    
<script>
   function delmember(id) {
      var xhr = new    XMLHttpRequest();      
         xhr.open("get", "/memberdel?id="+id, true);
         var resq;
         xhr.onreadystatechange = function() {
               if (xhr.readyState == 4 && xhr.status == 200) {
                     resq = xhr.responseText;
                     if(resq == 'YYYY') {
                        alert("삭제되었습니다.");
                     }else {
                        alert("삭제실패")
                     }
                  }
               }
               xhr.send();
         }
</script>
</script>