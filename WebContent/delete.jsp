<%@page import="com.hanains.guestbook.dao.guestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    long id = Long.parseLong(request.getParameter("id"));
	String password = request.getParameter("password");
	System.out.println("id: " + id +", password : " + password );
	guestDao dao = new guestDao();
	dao.delete(id, password);
	response.sendRedirect("/guestbook/");
%>