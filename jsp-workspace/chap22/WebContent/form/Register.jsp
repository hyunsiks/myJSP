<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	request.setCharacterEncoding("EUC-KR");

	String firstName = request.getParameter("first-name");
	String lastName = request.getParameter("last-name");
	String time = request.getParameter("time");
	String intrests = request.getParameter("intrest");
%> 

<%!
	private String getTimeLabel(String time){
		switch (time){
		case "am":
			return "���� ���";
		case "pm":
			return "���� ���";
		case "other":
			return "�� �� �ð�";
		case "any":
			return "�ƹ�����";
		default:
			return "������";
		}
	}
%>  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	FisrstName : <%=firstName != null ? firstName : "����" %><br>
	LastName : <%=lastName != null ? lastName : "����"%><br>

</body>
</html>