<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chap03.bean.Student" %> <%-- JSP Import하는법 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바빈</title>
</head>
<body>

<h3># 자바빈 객체(JavaBean Object)</h3>

<ul>
	<li>JSP에서 데이터를 편리하게 주고받기위한 클래스의 표준 형식</li>
	<li>자바빈 표준에 맞추어 정의한 클래스는 JSP에서 편리하게 사용할 수 있다</li>
</ul>

<h3># 자바빈 객체의 규칙</h3>

<ul>
	<li>반드시 public class여야 한다</li>
	<li>기본 생성자가 반드시 존재해야 한다</li>
	<li>필드의 접근 제어자가 private이어야 한다</li>
	<li>필드에 접근할때는 반드시 getter/setter를 통해 접근해야한다</li>
</ul>

<h3># 연습문제</h3>
<ol>
	<li>현재 페이지의 아래에 학생의 이름과 점수를 입력하는 폼을 생성한다</li>
	<li>이름과 점수와 함께 서버에 요청을 보내면 성적표 페이지를 반환받는다</li>
	<li>성적표에는 이름/점수/평균/등수가 적혀있다</li>
	<li>Student 클래스에 메서드와 필드는 자유롭게 추가할 수 있다</li>
</ol>


<form action="/chap03/grade/request" id= "sessionForm"></form>

<label for="select1">name</label>
<input type="text" id="select1" form="sessionForm" name="name"/>
<label for="select2">korScore</label>
<input type="text" id="select2" form="sessionForm" name="korScore"/>
<label for="select2">engScore</label>
<input type="text" id="select3" form="sessionForm" name="engScore"/>
<label for="select2">mathScore</label>
<input type="text" id="select4" form="sessionForm" name="mathScore"/>

<input type="submit" form="sessionForm" value="결정">

<hr>

<form action="/chap03/javabean/controller.jsp" id= "sessionForm2" method= "POST"></form>

<label for="select1">name</label>
<input type="text" id="select1" form="sessionForm2" name="name"/>
<label for="select2">korScore</label>
<input type="text" id="select2" form="sessionForm2" name="korScore"/>
<label for="select2">engScore</label>
<input type="text" id="select3" form="sessionForm2" name="engScore"/>
<label for="select2">mathScore</label>
<input type="text" id="select4" form="sessionForm2" name="mathScore"/>

<input type="submit" form="sessionForm2" value="결정">


</body>
</html>