<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%String name =  request.getParameter("name");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>'<%=name %>'의 상세정보 페이지</title>
</head>
<body>
<h1>'<%=name %>'의 성적표 </h1>
<hr>
<h1><%=session.getAttribute(name)%></h1>
<h1></h1>

</body>
</html>