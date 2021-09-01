<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String fruit = request.getParameter("fruit");

	//세션스코프에 저장하면 기본 30분 까지 세션이 만료안되기때문에 과일선택이 30분동안 지속된다
	session.setMaxInactiveInterval(10); //10초만 유지되게 변경
	session.setAttribute("choice", fruit.toUpperCase());
	
	response.sendRedirect("/chap22/scope/scope.jsp");
%>