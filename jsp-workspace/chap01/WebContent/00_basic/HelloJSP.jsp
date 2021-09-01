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
	<li>Servlet���� HTML�� �Է��ϱ� �ʹ� ���� -> JSP����</li>
	<li>JSP�� �ۼ��� �ڵ� -> Servlet �ڵ�� ��ȯ -> ������ -> Tomcat�� ���</li>
	<li>Servlet���� �ۼ��� �ڵ� -> ������ -> Tomcat�� ���(��, servlet�� �������ϴ�)</li>
	<li>JSP : HTML�ڵ尡 ����, JAVA�ڵ带 Ư���� ���� �±׸� ����� �߰�</li>
	<li>���� : JAVA�ڵ尡 ����, HTML�ڵ带 ���ڿ��� �߰�</li>
	<li>.jsp -> ���� -> .java(Servlet) -> compile -> .class(����Ʈ�ڵ�, �ڹٰ���ӽ��� ������ �� �ִ�����)���·� tomcat�� ����</li>
	<li>
		HTML�ڵ��� ���� ���� �������� ������ �� JSP�� ����ϰ�,
		JAVA�ڵ��� ���� ���� �������� ������ �� ������ ����ϴ� ���� ���ϴ�
	</li>
</ul>

<%--JSP Script --%>
<%--
	<% %> : ��� �ڹ� �ڵ带 ����� �� �ִ� ����
	<%! %> : �Լ��� ������ �� �ִ� ����
	<%= %> : ���ϴ� ���� HTML������ ��� (out.print()�� ������ ����)
	<%@ %> : ���� �ش� ������ ���� �پ��� ����
	
	�ڼ��� ���� : https://gunbin91.github.io/jsp/2019/05/17/jsp_5_jsp.html
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
	//������� �ڹ��ڵ带 �� �����ִ� ����(���������� �޼��� ���ο� �� �� �ִ� �͵鸸)
	int sum = 0;
	for(int i=0; i < 10; i++){
		sum += i;
	}
	
	//JSP���� �������� �⺻������ �ݵ�� �����ϴ� ��ü���� ��� �ִ�. (JSP ���尴ü�����. �����ϳ��� out)
	out.print(createRedText("Hello!"));
	out.print(createBgColorRedText("Hello!"));
%>

<%= createRedText("abc") %>
<%= sum %>
<%= createBgColorRedText(sum+"") %>

</body>
</html>