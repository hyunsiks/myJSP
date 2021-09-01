<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chap22.hash.MyHashing" %> <%-- JSP Import하는법 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>해싱값 받기(JSP에서 Servlet 코드 import하여 쓰기)</h3>
<%=MyHashing.hash("12345") %>

</body>
</html>