<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지 선택 페이지</title>
</head>
<body>

	<h3>이동할 페이지를 선택해주세요</h3>
	
	<form action ="/chap22/page/controller" method="Get">
		<input type="radio" name="page" value="1" checked><label>page1</label>
		<input type="radio" name="page" value="2"><label>page2</label>
		<input type="radio" name="page" value="3"><label>page3</label>
		<input type="submit" value="이동">
	</form>
	
	<h3>이동할 페이지를 선택2 (리다이렉트)</h3>
	
	<form action ="/chap22/page/controller2" method="Get">
		<input type="radio" name="page" value="1" checked><label>page1</label>
		<input type="radio" name="page" value="2"><label>page2</label>
		<input type="radio" name="page" value="3"><label>page3</label>
		<input type="submit" value="이동">
	</form>
	
	<h3>이동할 페이지를 선택3 (JSP로 보내보기)</h3>
	
	<form action ="./controller/Controller.jsp" method="Get">
		<input type="radio" name="page" value="1" checked><label>page1</label>
		<input type="radio" name="page" value="2"><label>page2</label>
		<input type="radio" name="page" value="3"><label>page3</label>
		<input type="submit" value="이동">
	</form>

</body>
</html>