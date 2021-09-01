<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	System.out.println("체크");

	String login = request.getParameter("login");
	System.out.println(login);
	
	session.setAttribute("customer", login);
	System.out.println(session.getAttribute("customer"));
	response.sendRedirect("/chap22/quiz/login.jsp");	
%>