<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.removeAttribute("customer");
	response.sendRedirect("/chap22/quiz/login.jsp");
%>