<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scope</title>
</head>
<body>

<h3># JSP객체의 Scope</h3>

<p>JSP 객체의 수명은 설정된 Scope에 따라 달라진다.</p>

<dl>
	<dt>page</dt>
		<dd>
			페이지 스코프에 설정된 Attribute는 지역변수처럼
			해당 페이지(서블릿)를 벗어나면 사라진다.
		</dd>
	<dt>request</dt>
		<dd>
			리퀘스트 스코프에 설정된 Attribute는 응답이
			발생하기 전까지 수명이 유지된다.
		</dd>
	<dt>session</dt>
		<dd>
			사용자의 세션이 만료될때까지 수명이 유지된다.
			세션은 부라우저 별로 존재한다.<br>
			IP주소가 같더라도 다른 브라우저를 사용하면 서버로부터
			새로운 세션을 받아갈 수 있다.
		</dd>
	<dt>application</dt>
		<dd>
			어플리케이션 스코프에 설정된 Attribute는
			서버가 꺼질때까지 유지된다(전역변수느낌).
		</dd>
</dl>	
	<h3># 세션</h3>
	
<ol>
	<li>사용자가 서버로 요청을 보낸다</li>
	<li>요청이 올바르다면 서버는 알맞은 응답을 보낸다. 추가로 세션ID도 함께 보낸다</li>
	<li>사용자의 웹 브라우저에 첫번째 응답과 세션ID가 함께 도착한다.</li>
	<li>해당 웹서버에 다시 요청을 보낼때 브라우저에 저장된 세션ID가 함께 전송된다.</li>
	<li>웹 서버는 해당 세션ID를 이용해 사용자를 식별한다.</li>
	<li>세션ID는 사용자의 웹 브라우저가 종료될때까지 유지된다.</li>
	<li>세션 어트리뷰트에 저장하는 자바 객체들은 사용자의 세션이 만료될 때까지 살아있게 된다</li>
</ol>

<%if(session.getAttribute("choice") == null){ %>
<form action="./controller.jsp" id= "sessionForm"></form>

<input type="radio" id="select1" form="sessionForm" name="fruit" value="apple" />
<label for="select1">apple</label>
<input type="radio" id="select2" form="sessionForm" name="fruit" value="orange" />
<label for="select2">orange</label>
<input type="radio" id="select3" form="sessionForm" name="fruit" value="grape" />
<label for="select3">"grape"</label>
<input type="radio" id="select4" form="sessionForm" name="fruit" value="peach" />
<label for="select4">peach</label>
<input type="radio" id="select5" form="sessionForm" name="fruit" value="melon" />
<label for="select5">melon</label>

<input type="submit" form="sessionForm" value="결정">
<%}else{ %>
	<h3>${choice } 를 선택하셨습니다.</h3>

	<button id="choice-again-btn">다른 과일 선택하기1</button>
	<button id="choice-again-btn2">다른 과일 선택하기2</button>
	<button id="choice-again-btn3">다른 과일 선택하기3</button>
<% } %>

	<script>
		const btn = document.querySelector("#choice-again-btn");
		const btn2 = document.querySelector("#choice-again-btn2");
		const btn3 = document.querySelector("#choice-again-btn3");
		
		function invalidateSession(){
			location.href = "./invalidate.jsp"'
		}
		
		function deleteChoice(){
			location.href = "./removeAttribute.jsp"
		}
		
		const servletSession = () => {location.href = '/chap22/fruit/re'};
		
		btn.addEventListener('click', (e) =>{
			invalidateSession();
		});
		
		btn2.addEventListener('click', (e) =>{
			deleteChoice();
		});
		
		btn3.addEventListener('click', (e) =>{
			servletSession();
		});
		
	</script>

</body>
</html>