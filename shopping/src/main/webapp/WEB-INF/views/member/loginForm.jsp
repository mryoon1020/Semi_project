<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>로그인 처리</title>
  <meta charset="utf-8">
  <style type="text/css">
  #red{
    color:red;
  }
  #red2{
    color:red;
  }
  </style>
</head>
<body>
<div class="container">

<h1 class="col-sm-offset-2 col-sm-10">로그인</h1>
  <form class="form-horizontal" 
        action="/member/login"
        method="post">
    <input type="hidden" name="rurl" value="${param.rurl}">    
    <input type="hidden" name="bbsno" value="${param.bbsno}">    
    <input type="hidden" name="nowPage" value="${param.nowPage}">    
    <input type="hidden" name="nPage" value="${param.nPage}">    
    <input type="hidden" name="col" value="${param.col}">    
    <input type="hidden" name="word" value="${param.word}">
        
    <div class="form-group">
      <label class="control-label col-sm-2" for="id">아이디</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="id" 
        placeholder="Enter id" name="id" required="required" 
        value='${c_id_val}'>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">비밀번호</label>
      <div class="col-sm-4">          
        <input type="password" class="form-control" id="pwd" 
        placeholder="Enter password" name="passwd" required="required">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-6">
        <div class="checkbox">
          <label>
          <c:choose>
          <c:when test="${c_id =='Y'}">
          	<input type="checkbox" name="c_id" value="Y" checked="checked"> Remember ID
          </c:when>
          <c:otherwise>
            <input type="checkbox" name="c_id" value="Y" > Remember ID
          </c:otherwise>
          </c:choose>
          </label>
        </div>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-8">
        <button type="submit" class="btn btn-default">로그인</button>
        <button type="button" class="btn btn-default"
         onclick="location.href='agree'">회원가입</button>
        
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#findIdModal">
  		아이디 찾기
		</button>      
        
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#findPwModal">
  		패스워드 찾기
		</button>
        
      </div>
    </div>
  </form>

</div>

<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="findIdModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">아이디 찾기</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">
       
       <p><b>이름:</b></p>
       <input type="text" class="form-control" id="nameInput" 
        placeholder="이름을 입력해주세요" name="" required="required">
        <p></p>
       <p><b>이메일:</b></p>
       <input type="text" class="form-control" id="emailInput" 
        placeholder="이메일을 입력해주세요" name="" required="required">
       <p></p>
       <p id="red">...</p>
      </div>
      
      <div class="modal-footer">
      	<button type="button" class="btn btn-primary" id="findIDInModal">아이디 찾기</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

      </div>
    </div>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="findPwModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">패스워드 찾기</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">
      
      <p><b>ID:</b></p>
       <input type="text" class="form-control" id="idInput" 
        placeholder="ID를 입력해주세요" name="" required="required">
        <p></p>
       <p><b>이름:</b></p>
       <input type="text" class="form-control" id="nameInput2" 
        placeholder="이름을 입력해주세요" name="" required="required">
       <p></p>
       <p id="red2">...</p>
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id= "findPWInModal">패스워드 찾기</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<script src="/js/member.js"></script>
</body>
</html>