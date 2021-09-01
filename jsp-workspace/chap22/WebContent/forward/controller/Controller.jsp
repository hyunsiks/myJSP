<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pageNum = request.getParameter("page");

	request.getRequestDispatcher(
			String.format("../view/page%s.jsp", pageNum)).forward(request, response);
%>