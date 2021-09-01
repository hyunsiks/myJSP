<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>

<h3># login.jsp</h3>

<ol>
	<li>DB에 회원 정보를 저장할 수 있는 테이블을 하나 생성한다.(ID/PASSWORD/EMAIL) </li>
	<li>비밀번호는 해시 값으로 저장해야 한다.</li>
	<li>사용자는 지금 이 페이지에서 아이디와 비밀번호를 입력한다</li>
	<li>컨트롤에서 DB에서 꺼내온 아이디/비밀번호와 사용자가 입력한 아이디/비밀번호를 대조하여
		세션에 로그인 성공 여부를 저장한다</li>
	<li>로그인 된 상태로 현재 페이지를 보면 로그인 폼은 사라지고,
		회원 정보와 로그아웃 버튼이 보여야 한다.</li>
	<li>로그아웃 기능도 구현해야 한다(버튼)</li>
</ol>

<%if(session.getAttribute("customer") == null){ %>
<form action="/chap22/login/request" id= "sessionForm"></form>

<input type="text" id="select1" form="sessionForm" name="ID"/>
<label for="select1">ID</label>
<input type="text" id="select2" form="sessionForm" name="Password"/>
<label for="select2">Password</label>
<input type="text" id="select3" form="sessionForm" name="EMAIL"/>
<label for="select3">EMAIL</label>

<input type="submit" form="sessionForm" value="결정">

<button id="out">로그아웃버튼!</button>
<%}else{ %>
	<h3>${customer } 님께서 로그인하셨습니다.</h3>
	
	<dir>성공하셨습니다! 축하합니다</dir>
	<button id="out">로그아웃버튼!</button>
<% } %>

	<script>
		
		
		const logout = document.querySelector("#out");
		
		logout.addEventListener('click', function(e){
			console.log("확인");
			logoutsession();
		});
		
		function logoutsession(){
			location.href = "./logoutsession.jsp"
		}
		
		
	</script>



</body>
</html>