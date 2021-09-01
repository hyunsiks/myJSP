<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>한글 보내는 페이지</title>
</head>
<body>
	
<!-- 	GET방식의 요청은 URL뒤에 추가되어서 도착한다 
		그곳에 실려온 데이터의 인코딩은 웹 서버(Tomcat)가 담당한다
		
		톰캣에서는 인코딩 타입의 기본값으로 UTF-8을 사용한다	
		server.xml의 Connector의 URIEncoding 속성을 추가설정하면
		GET방식 인코딩 타입을 변경할 수 있다	-->
	<h5># GET 방식</h5>
	<form action="/chap03/lagnuage/kr" method="GET">
		<input type="hidden" name="msg" value="안녕하세요" />
		<input type="submit" value='"안녕하세요" 보내기' />
	</form>
	
	
<!-- 	POST방식의 요청은 request 내부에 실려서 도착한다 -->
	<h5># POST 방식</h5>
	<form action="/chap03/lagnuage/kr" method="POST">
		<input type="hidden" name="msg" value="안녕하세요" />
		<input type="submit" value='"안녕하세요" 보내기' />
	</form>

	<hr>
	
	<h3># JSP의 여러가지 charset 설정</h3>
	
	<dd>
		<dt>1. meta 태그의 charset 설정: meta charset="UTF-8"</dt>
		<dd>클라이언트의 웹 브라우저가 페이지를 해석할때 사용할 charset을 설정한다</dd>
		
		<dt>2. pageEncoding의 charset 설정: pageEncoding="UTF-8"</dt>
		<dd>이곳의 JSP 코드들을 서블릿으로 반환할때 사용할 charset을 의미한다</dd>
		
		<dt>3. contentType의 charset 설정: contentType="text/html; charset=UTF-8"</dt>
		<dd>서블릿으로 결과물의 종류 및 인코딩 타입을 설정한다</dd>
	</dd>

</body>
</html>