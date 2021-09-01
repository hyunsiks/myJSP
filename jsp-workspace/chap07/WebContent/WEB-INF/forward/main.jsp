<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main JSP page</title>
</head>
<body>

<h3># .jsp 파일은 서블릿과 같다</h3>

<p>근데 왜 forward는 서블릿에서만 하지?</p>
<p>jsp 파일에서도 forward가능</p>
<jsp:forward page="./sub.jsp"></jsp:forward>
