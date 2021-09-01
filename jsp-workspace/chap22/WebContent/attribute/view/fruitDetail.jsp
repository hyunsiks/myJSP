<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>'<%=request.getAttribute("fruitName") %>'의 상세정보 페이지</title>
</head>
<body>

<h1><%=request.getAttribute("fruitName") %></h1>
<p><%=request.getAttribute("fruitDetail") %></p>

<hr>

<table>
	<tr>
		<th>PRICE</th>
		<th>SIZE</th>
	</tr>
	<%=request.getAttribute("apple1") %>
	<%=request.getAttribute("apple2") %>
	<%=request.getAttribute("apple3") %>
	<%
		Object[] apples = (Object[])request.getAttribute("appleArray");
		for(int i=0; i < apples.length; i++){
			out.print(apples[i]);
		}
	%>
</table>

<h3># Attribute에 들어있는 값들을 쉽게 꺼내 쓰는 방법</h3>

<ul>
	<li>
		Attribute에 들어있는 오브젝트를 쉽게 꺼내 쓸 수 있다</li>
	<li>JSP를 서블릿으로 변환하는 과정에서</li>
	<li>해당 클래스의 toString()을 호출하여 html 페이지에 출력한다</li>
	<li>EL을 통해 인스턴스의 필드값에 접근하면 해당 필드의 getter를 자동으로 호출한다</li>
	<li>.찍고 접근한 필드가 getter가 없는 필드라면 에러가 발생한다</li>
</ul>
<ul>
	<li>${fruitName}</li>
	<li>${fruitDetail}</li>
	<li>${apple1.price}</li>
	<li>${apple1.size}</li>
</ul>

</body>
</html>