<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL (JSP Standard Tag Library)</title>
</head>
<body>

<h3># JSTL</h3>

<ul>
	<li>JSP에서 JAVA코드를 사용하기에 너무 불편해서 나온 라이브러리</li>
	<li>JAVA의 여러가지 기능을 태그 형태로 사용할 수 있다</li>
	<li>JAVA의 모든 기능을 사용할 수 있는 것은 아니다</li>
	<li>JSP코드를 깔끔하게 유지할 수 있다</li>
</ul>

<h3># JSTL core</h3>

<p>자바의 주요 기능들이 구현되어 있는 커스텀 태그 라이브러리</p>

<dl>
	<dt>1. c:set</dt>
	<dd>setAttribute를 편하게 사용할 수 있다</dd>
	
	<dt>2. c:if</dt>
	<dd>if문을 편하게 사용할 수 있다. else if, else는 없다</dd>
	
	<dt>3. c:choose</dt>
	<dd>if, else if, else처럼 사용되는 조건문 
		c:when, c:otherwise와 함께 사용
		c:choose태그 안에 c:when과 c:otherwise 사용한다</dd>
		
	<dt>4. c:forEech</dt>
	<dd>숫자 또는 반복적인 객체를 이용한 반복문을 간편하게 작성할 수 있다</dd>
	
	<dt>5. c:forTokens</dt>
	<dd>문자열을 토큰으로 split한 뒤 하나씩 꺼내며 반복할 수 있다
		delims에 split할 문자를 설정 할때에 여러개 표시할 수 있다
		ex)delims = "/,"(/ 나 , 로 잘라라)</dd>
		
	<dt>6. c:redirect</dt>
	<dd>간편하게 리다이렉트 할 수 있다
	
	<dt>7. c:url</dt>
	<dd>복잡한 URL을 좀 더 편리하게 생성할 수 있다</dd>
</dl>

<hr>
<%-- <% request.setAttribute("fruit", "apple") %>와 같다 --%>
<c:set var="fruit" value="apple"/>
<p>${fruit }</p>
<c:set var="fruit" value="banana"/>
<p>${fruit }</p>
<c:set var="color" value="orange"></c:set>

<!-- scope=[pgge | request | session | application] -->
<c:set var="fruit" value="pineaplle" scope="application"></c:set>
<p>${applicationScope.fruit }</p>

<c:if test="true">
	<p>if문에의해 나타날 문장</p>
</c:if>
<c:if test="${2 > 1 }">
	<p>if문에의해 나타날 문장2</p>
</c:if>
<c:if test="${fruit eq 'banana' }">
	<p>if문에의해 나타날 문장3</p>
</c:if>

<c:choose>
	<c:when test="${empty color }">
		<p>color 어트리뷰트가 비어있습니다.</p>
	</c:when>
	<c:when test="${color == 'red' }">
		<p>color가 빨간색입니다</p>
	</c:when>
	<c:otherwise>
		<p style="color: ${color};">빨간색 이외의 색상입니다.</p>
	</c:otherwise>
</c:choose>

<hr>

<div class='container'>
<c:forEach begin="0" end="10" var="i">
	<div>${i }</div>
</c:forEach>
</div>

</body>
</html>

<%
java.util.ArrayList<String> list = new java.util.ArrayList<>();

list.add("철수");
list.add("민수");
list.add("민식");
list.add("민식");
list.add("민식");
list.add("민식");
list.add("민식");
list.add("민식");

pageContext.setAttribute("list", list);
%>
<c:forEach items="${list }" var="item">
	${item },
</c:forEach>
<!--
	varStatus.first: 첫 번째 반복일 때 true
	varStatus.last: 마지막 반복일 때 true
	varStatus.index: 몇 번째 반복인지 알 수 있음(0base)
	varStatus.count: 몇 개째인지 알 수 있음(1base)
	varStatus.begin: 몇 부터 시작했는지 알 수 있음
	varStatus.end: 언제 끝나는지 알 수 있음	
 -->
<c:forEach items="${list }" var="item" varStatus="status">
	<div>
		[이 반복문은 ${status.begin }부터 시작되어 ${status.end }에서 끝납니다.]<br>
		[또한 ${status.count }개 째이고, ${status.index }번 째 반복입니다]
	</div>
</c:forEach>

<c:forTokens var="animal" items="cow,chicken,dog,cat/monkey/horse" delims="/,">
	<div>${animal }</div>
</c:forTokens>

<c:if test="${!empty login }">
	<c:redirect url="http://naver.com"/>
</c:if>

<p>
	만들어진 URL: 
		<c:url value="/news/add">
			<c:param name="type" value="weather"/>
			<c:param name="reporter" value="waitingPark"/>
		</c:url> <br>
		
	원래 URL만드는 방식: <%=request.getContextPath() %>/news/add
</p>

