<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include Main Page</title>
<style>
	.container{
		display: grid;
		grid-template-columns: 1fr 2fr 1fr;
	}
	
	.container > *{
		background-color: Black;
		color: White;
		margin: 5px;
		padding: 50px;
	}
</style>
</head>
<body>

<h3># include도 jsp페이지에서 쓸 수 있다</h3>

<p>포워드는 서브릿에서 사용하는 것이 자연스럽고 include는 jsp에서
   사용하는 것이 용도에 맞고 자연스럽다<br>
   (jsp에서 forward는 전의 내용이 사라지기때문)</p>
   
<h3>방법은 2가지가 있다</h3>
<ul>
	<li> &lt;jsp:include page = ""/&gt;</li>
	<li> &lt;%@ include file = ""%&gt;</li>
</ul>


<h3># jsp include와 include directive의 차이점</h3>
<ul>
	<li>jsp include는 req, resp를 전달하고, 그곳에서 완성된 응답을 포함한다</li>
	<li>include directive는 요청을 받기 전에 소스 파일을 가져와서 합쳐놓는다</li>
	<li>즉 모든 헤더링크를 한 jsp파일에 몰아두거나 전역변수들을 몰아두고
		include directive로 끌어올때 많이 사용한다</li>
</ul>

<div class="container">
	<jsp:include page="./sub.jsp"/>
</div>

<hr>

<footer>
	<jsp:include page="./footer.jsp"/>
</footer>

</body>
</html>