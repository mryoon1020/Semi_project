<%@ page contentType="text/html; charset=UTF-8" %> 
<!DOCTYPE html> 
<html> 
<head>
  <title>homepage</title>
  <meta charset="utf-8">
  <script>
  	function list(){
  		let url = '/contents/list';
  		url += "?nowPage=${param.nowPage}";
  		url += "&col=${param.col}";
  		url += "&word=${param.word}";
  		location.href = url;
  	}
  	function update(){ //수정페이지 이동
  		let url = '/contents/update/${dto.contentsno}';
  		location.href = url;
  	}
  	
  	function reply(){ //답변페이지 이동
  		let url = '/contents/reply/${dto.contentsno}';
  		location.href = url;
  	}
  	
  </script>
</head>
<body> 
<div class="container">
<h1>조회</h1>
<img src="/contents/storage/${dto.filename}"  class="img-rounded" width="200px" height="200px">
<div class="panel panel-default">
	
	<div class="panel-heading">상품명</div>
	<div class="panel-body">${dto.pname}</div>
	<div class="panel-heading">가격</div>
	<div class="panel-body">${dto.price}</div>
	<div class="panel-heading">재고량</div>
	<div class="panel-body">${dto.stock}</div>
	<div class="panel-heading">내용</div>
	<div class="panel-body" style='height:170px'>${dto.detail}</div>
	<div class="panel-heading">등록일</div>
	<div class="panel-body">${dto.rdate}</div>
	<div class="panel-heading">이미지 파일명</div>
	<div class="panel-body">${dto.filename}</div>
</div>
<div>
	<button onclick="location.href='/contents/create'">등록</button>
	<button onclick="update()">수정</button>
	<button onclick="list()">목록</button>
	
</div>
</div>
</body> 
</html> 