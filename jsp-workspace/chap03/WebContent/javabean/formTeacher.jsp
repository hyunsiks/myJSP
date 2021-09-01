<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/chap03/student/add" id= "sessionForm"></form>

<li><label for="select1">이름</label>
<input type="text" id="select1" form="sessionForm" name="name"/></li>
<li><label for="select2">국어</label>
<input type="text" id="select2" form="sessionForm" name="kor"/></li>
<li><label for="select2">영어</label>
<input type="text" id="select3" form="sessionForm" name="eng"/></li>
<li><label for="select2">수학</label>
<input type="text" id="select4" form="sessionForm" name="math"/></li>

<input style="150px" type="submit" form="sessionForm" value="결정">

</body>
</html>