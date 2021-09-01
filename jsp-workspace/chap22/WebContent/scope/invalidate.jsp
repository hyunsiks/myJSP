<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 세션을 바로 만료시킨다.
	session.invalidate();
	response.sendRedirect("/chap22/scope/scope.jsp");
%>