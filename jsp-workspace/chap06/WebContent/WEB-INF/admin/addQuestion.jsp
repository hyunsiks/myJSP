<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새 질문 등록 페이지</title>
</head>
<body>

<h3>새 질문 등록</h3>
<form action="/chap06/admin/addQuestion" method="POST"/>
	새질문을 등록하세요: 
	
	<input name="question" type="text" value="질문등록" />
	<input type="submit" value="등록하기" />
</form>

</body>
</html>