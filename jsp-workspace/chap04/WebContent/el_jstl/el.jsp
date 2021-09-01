<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 테스트를 위한 어트리뷰트 설정
	pageContext.setAttribute("most", "티모");
	request.setAttribute("most", "가렌");
	session.setAttribute("most", "다리우스");
	application.setAttribute("most", "야스오");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL (Expression Language)</title>
</head>
<body>

<h3># .jsp에서는 EL을 통해 Attribute에 실려있는 값들을 편리하게 사용할 수 있다</h3>

<h4> ※ Attribute를 실어놓을 수 있는 4가지 영역</h4>
<ul>
	<li>page</li>
	<li>request</li>
	<li>session</li>
	<li>application</li>
</ul>

<ol>
	<li>그냥 출력: ${most } (가장 좁은 범위의 Attribute가 선택됨)</li>	
	<li>page의 출력 : ${pageScope.most }</li>
	<li>request의 출력 : ${requestScope.most }</li>
	<li>session의 출력 : ${sessionScope.most }</li>
	<li>application의 출력 : ${applicationScope.most }</li>
</ol>

<h3># EL을 통해 파라미터에 저장되어 있는 값 쉽게 출력하기</h3>

<!-- http://localhost:8080/chap04/el_jsp
	/el.jsp?name=abc&age=20&hobby=fishing&hobby=sleeping&hobby=soccer 
	(파라미터를 일부러 url뒤에 붙여서 만들어준것)	
-->
<ol>
	<li>${param.name }</li>
	<li>${param.age }</li>
	<li>체크박스: ${paramValues.hobby[1] }</li>
</ol>

<h3># EL의 리터럴</h3>
<ul>
	<li>boolean: ${true}, ${false } </li>
	<li>정수: ${123 }, ${234 }, ${123 + 456 }, ${5 * 30 }</li>
	<li>실수: ${123.123 * 3 }</li>
	<li>문자열: ${"\"hello, world!\"" }</li>
</ul>

<h3># EL의 연산자</h3>

<ul>
	<li>
		산술: +, -, *, /, %, mod
		11 % 7의 결과 : ${11 % 7 }
		11 mod 7의 결과 : ${11 mod 7 }
	</li>
	<li>
		비교: ==, !=, .., eq, ne, lt, gt, le, ge <br>
		3이 7보다 큰가요? ${3 > 7 }, ${3 gt 7 }
	</li>
	<li>
		논리: and, or, not, &&, }}, ! <br>
		${requestScope.most < sessionScope.most and most > requestScope.most }
	</li>
	<li>
		empty: "" 또는 null 일때 true <br>
		(자바로 치면 stt == "" || str == null)<br>
		<%
			pageContext.setAttribute("value1", null);
			pageContext.setAttribute("value2", "");
			pageContext.setAttribute("value3", "티모");	
		%>
		${empty value1 }, ${empty value2 }, ${empty value3 }
	</li>
	<li>
		삼항: condition ? yes : no <br>
		${empty value3 ? '비어있음' : '안비어있음' }
	</li>
</ul>

</body>
</html>