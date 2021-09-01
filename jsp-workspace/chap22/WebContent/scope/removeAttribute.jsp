<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	session.removeAttribute("choice");
// 	session.setAttribute("choice", null);
	
	response.sendRedirect("/chap22/scope/scope.jsp");
%>