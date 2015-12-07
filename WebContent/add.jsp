<%@page import="com.hanains.guestbook.dao.guestDao"%>
<%@page import="com.hanains.guestbook.vo.guestVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	
	guestVo vo = new guestVo();	
	vo.setName(request.getParameter("name"));
	vo.setPassword(request.getParameter("pass"));
	vo.setMessage(request.getParameter("content"));
	
	guestDao dao = new guestDao();
	dao.insert(vo);
	response.sendRedirect("/guestbook/");
%>

