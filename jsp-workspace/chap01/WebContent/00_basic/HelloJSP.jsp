<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>helloJSP</title>
</head>
<body>

<h3>JSP(Java Server Page)</h3>

<ul>
	<li>Servlet으로 HTML을 입력하기 너무 불편 -> JSP등장</li>
	<li>JSP로 작성한 코드 -> Servlet 코드로 변환 -> 컴파일 -> Tomcat에 등록</li>
	<li>Servlet으로 작성한 코드 -> 컴파일 -> Tomcat에 등록(즉, servlet이 빠르긴하다)</li>
	<li>JSP : HTML코드가 메인, JAVA코드를 특수한 영역 태그를 사용해 추가</li>
	<li>서블릿 : JAVA코드가 메인, HTML코드를 문자열로 추가</li>
	<li>.jsp -> 번역 -> .java(Servlet) -> compile -> .class(바이트코드, 자바가상머신이 실행할 수 있는형태)상태로 tomcat에 적재</li>
	<li>
		HTML코드의 양이 많은 페이지를 생성할 땐 JSP를 사용하고,
		JAVA코드의 양이 많은 페이지를 생성할 땐 서블릿을 사용하는 것이 편하다
	</li>
</ul>

<%--JSP Script --%>
<%--
	<% %> : 모든 자바 코드를 사용할 수 있는 영역
	<%! %> : 함수를 선언할 수 있는 영역
	<%= %> : 원하는 값을 HTML영역에 출력 (out.print()의 간편한 버전)
	<%@ %> : 현재 해당 서블릿에 대한 다양한 설정
	
	자세한 내용 : https://gunbin91.github.io/jsp/2019/05/17/jsp_5_jsp.html
 --%>

<%!
	private String createRedText(String text){
		return String.format("<div style='color: red;'>%s</div>", text);
	}
	private String createBgColorRedText(String text){
		return String.format("<div style='background-color: red; color: white;'>%s</div>",text);
		
	}
%>

<%
	//쓰고싶은 자바코드를 다 쓸수있는 영역(문법적으로 메서드 내부에 쓸 수 있는 것들만)
	int sum = 0;
	for(int i=0; i < 10; i++){
		sum += i;
	}
	
	//JSP번역 과정에서 기본적으로 반드시 생성하는 객체들이 몇가지 있다. (JSP 내장객체라고함. 그중하나가 out)
	out.print(createRedText("Hello!"));
	out.print(createBgColorRedText("Hello!"));
%>

<%= createRedText("abc") %>
<%= sum %>
<%= createBgColorRedText(sum+"") %>

</body>
</html>