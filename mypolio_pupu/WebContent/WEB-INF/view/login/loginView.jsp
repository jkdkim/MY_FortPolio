<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  
  <style>
  
  .button {
    /* Green */
    border: none;
    color: white;
    padding: 5px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 13px;
    margin: 3px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
    width: 493px;
}

  
  
  .button5 {
    background-color: ;
    color: black;
    border: 2px solid ;
     border-radius:5px
}

.button5:hover {
    background-color: #58FA82;
    color: white;
    
}
  
  .pupu_header{
      text-align: center;
      font-size: 30px;
  }
  
  
  .modal-header,  .h2.close {
      background-color: #5cb85c;
      color:white !important;
     
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  </style>
  <style>
  .buttonL {
  
    background-color: #04B404; /* Green */
    border-radius: 4px;
    color: white;
    padding: 10px 22px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 18px;
    font-style :inherit;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
  
  
  
}



.buttonL2 {
      background-color: white; 
    color: #BDBDBD; 
    border: 2px solid #088A08;
}
.buttonL2:hover {
    background-color: #04B404;
  
    color: white;
}

  
  </style>
  
  
</head>
<body>

<div class="container" >
<button  class="buttonL buttonL2 "  id="myBtn">Sign in</button>
  
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="pupu_header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        <!--  <h4><span class="glyphicon glyphicon-lock"></span> Login</h4> --> 
           <h2><span class="glyphicon glyphicon-grain"></span> Pupu</h2>
        
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form" action="loginAuth" method="post">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> ID</label>
              <input type="text" class="form-control" id="usrname" placeholder="Enter email" name="id">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password" class="form-control" id="psw" placeholder="Enter password" name="pass">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="save" checked>아이디 저장</label>
            </div>
              <button type="submit" class="button button5"><span class="glyphicon glyphicon-off"></span> Login</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class=" button5 btn-default pull-left" data-dismiss="modal">
          <span class="glyphicon glyphicon-remove"></span> Cancel</button>
        </div>
      </div>
    </div>
  </div>
</div>
 
<script >
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});
</script>

</body>
</html>

