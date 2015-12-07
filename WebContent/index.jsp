<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.hanains.guestbook.vo.guestVo"%>
<%@page import="com.hanains.guestbook.dao.guestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	guestDao dao = new guestDao();
	List<guestVo> list = dao.getlist();	
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- 순서도 중요하다. 이게 불러오고 여기 내용을 bootstrap에서 불러다 쓰기 때문 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style type="text/css">
</style>

</head>
<body>

  <h2 class="text-center"><방명록></h2>
  <p class="text-center">하고싶은 말을 써주세요</p>       
  
<div class="container bg-info " style="background-color:lavender;">
  	<%for(guestVo vo:list){ %>     
  	<div class="row text-center">
    	<div class="col-sm-1" style="background-color:lavenderblush;"> <%=vo.getNo() %></div>
    	<div class="col-sm-1"> <%=vo.getName() %></div>
    	<div class="col-sm-7 text-left" style="background-color:lavenderblush;"><%=vo.getMessage() %> </div>
    	<div class="col-sm-2"> <%=vo.getReg_date() %></div>    	
    	<div class="col-sm-1"><a href="deleteform.jsp?id=<%=vo.getNo()%>">
    	<button type="button" class="btn btn-warning btn-xs">삭제</button></a></div>
  	</div>
   	<%} %>
</div>
<br>

<div class="container" style="background-color:lavenderblush;">
  <h2><방명록 남기기></h2> 
  <form role="form" action="add.jsp" method="post">
    <div class="form-group col-sm-4">
      <label for="usr">Name:</label>
      <input type="text" class="form-control" name="name">
    </div>
    <div class="form-group col-sm-8">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" name="pass">
    </div>
	<div class="form-group">
      <label for="comment">Comment:</label>
      <textarea class="form-control" rows="5" name="content"></textarea>
    </div>    
    <input type="submit" class="btn btn-info" value="작성">
  </form>
</div>
	
</body>
</html>